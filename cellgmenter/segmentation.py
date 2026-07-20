from skimage.measure import label, regionprops, block_reduce
import numpy as np
import pyclesperanto as cle
import json
import glob
import os
import math

from numba import jit, prange, njit
# from pathlib import Path
gpu = False
sigma = 50
minimum_size = 250
# Functions


# Tracking functions

def read_previous_label_data(paths):
    """Return a list of dicts loaded from *.json files of the previous frame."""
    return [json.load(open(p)) for p in paths]


def euclidean(p, q):
    """Euclidean distance between two (y,x) points."""
    return math.hypot(p[0] - q[0], p[1] - q[1])


def assign_labels_consistently(cells, prev_data, next_free_id, d_thresh=50):
    """
    Greedy one-to-one matcher.
    Returns: list[str] (one label per current cell) and updated next_free_id.
    """
    used_prev = set()  # indices of prev_data already taken
    new_labels = []

    for cell in cells:
        best_idx, best_dist = None, float("inf")

        for idx, pdata in enumerate(prev_data):
            if idx in used_prev:
                continue
            dist = euclidean(cell.centroid, pdata["center"])
            if dist < best_dist:
                best_dist, best_idx = dist, idx

        if best_idx is not None and best_dist <= d_thresh:
            # Re-use the old label
            used_prev.add(best_idx)
            new_labels.append(prev_data[best_idx]["label"])
        else:
            # Give a brand-new global id
            new_labels.append(f"cell{next_free_id}")
            next_free_id += 1

    return new_labels, next_free_id

def normalize_background(img, sigma, gpu):
    
    """
    This function loads an image and performs the division of the input by a blurred filtered version of itself.
    """
    intensity_normalized = None

    if gpu:
        pushed = cle.push(img)
        intensity_normalized = cle.divide_by_gaussian_background(pushed, intensity_normalized,
                                                                 sigma_x=sigma, sigma_y=sigma, sigma_z=0)
        intensity_normalized = np.asarray(intensity_normalized) #img is pulled from GPU memory
    
    else:
        pushed = img
        intensity_normalized = cle.divide_by_gaussian_background(pushed, intensity_normalized,
                                                                 sigma_x=sigma, sigma_y=sigma, sigma_z=0)
        intensity_normalized = np.asarray(intensity_normalized)

    return intensity_normalized


@jit(nopython=True)
def pad_with_reflect(data, pad_x, pad_y):
    """
    Reflective padding for a 3D array (t, x, y) along the spatial dimensions (x, y).

    Parameters:
        data (np.ndarray): Input array of shape (t, x, y).
        pad_x (int): Padding size along the x dimension.
        pad_y (int): Padding size along the y dimension.

    Returns:
        np.ndarray: Padded array.
    """
    t, x, y = data.shape
    padded = np.zeros((t, x + 2 * pad_x, y + 2 * pad_y), dtype=data.dtype)

    # Fill the central region
    padded[:, pad_x:pad_x + x, pad_y:pad_y + y] = data

    # Reflect padding on the edges
    # Top and bottom
    for px in range(pad_x):
        padded[:, px, pad_y:pad_y + y] = data[:, pad_x - px - 1, :]
        padded[:, x + pad_x + px, pad_y:pad_y + y] = data[:, x - px - 1, :]

    # Left and right
    for py in range(pad_y):
        padded[:, pad_x:pad_x + x, py] = padded[:, pad_x:pad_x + x, pad_y + pad_y - py - 1]
        padded[:, pad_x:pad_x + x, y + pad_y + py] = padded[:, pad_x:pad_x + x, y + pad_y - py - 1]

    # Corners (top-left, top-right, bottom-left, bottom-right)
    for px in range(pad_x):
        for py in range(pad_y):
            # Top-left
            padded[:, px, py] = data[:, pad_x - px - 1, pad_y - py - 1]
            # Top-right
            padded[:, px, y + pad_y + py] = data[:, pad_x - px - 1, y - py - 1]
            # Bottom-left
            padded[:, x + pad_x + px, py] = data[:, x - px - 1, pad_y - py - 1]
            # Bottom-right
            padded[:, x + pad_x + px, y + pad_y + py] = data[:, x - px - 1, y - py - 1]

    return padded


@jit(nopython=True, parallel=True)
def median_filter_1d_2d(img, filter_size):
    """
    Apply a median filter with filter size (1, H, W) to a 3D array using Numba.

    Parameters:
        img (np.ndarray): Input 3D array (shape: t, x, y).
        filter_size (tuple): Tuple of filter size (1, height, width).

    Returns:
        np.ndarray: Filtered 3D array.
    """
    data = np.copy(img)
    data = np.asarray(data, dtype=np.float32)

    # Extract the filter sizes
    f_t, f_x, f_y = filter_size

    if f_t != 1:
        raise ValueError("The filter size for the first dimension must be 1.")

    # Padding sizes
    pad_x = f_x // 2
    pad_y = f_y // 2

    # Pad the input data for spatial dimensions
    padded_data = pad_with_reflect(data, pad_x, pad_y)

    # Create an output array
    filtered_data = np.zeros_like(data)

    window_size = f_x * f_y
    k = window_size // 2  # Median index

    # Apply the filter frame by frame (parallel over time dimension)
    for t in prange(data.shape[0]):
        for x in range(data.shape[1]):
            for y in range(data.shape[2]):
                # Extract the spatial window for the current position
                # window = padded_data[
                #          t,  # Keep the time slice fixed
                #          x:x + f_x,
                #          y:y + f_y
                #          ]
                # # Compute the median and assign it to the output
                # filtered_data[t, x, y] = np.median(window)
                window = padded_data[t, x:x + f_x, y:y + f_y].flatten()
                # Partial sort to find the median
                median = np.partition(window, k)[k]
                filtered_data[t, x, y] = median

    result_32bit = data - filtered_data

    # Step 3: Convert to 16-bit
    return result_32bit


@jit(nopython=True)
def random_sample_without_replacement(arr, sample_size):
    """
    Randomly select `sample_size` values from `arr` without replacement.
    Works by shuffling indices and taking the first `sample_size`.
    """
    n = len(arr)
    indices = np.arange(n)
    for i in range(sample_size):
        j = np.random.randint(i, n)
        indices[i], indices[j] = indices[j], indices[i]
    return arr[indices[:sample_size]]


# Reuse previous pad_with_reflect for 3D arrays (t, x, y) and modify to extract 2D padding

@njit
def bin_index(val, min_val, max_val, num_bins):
    if val <= min_val:
        return 0
    elif val >= max_val:
        return num_bins - 1
    return int((val - min_val) / (max_val - min_val) * (num_bins - 1))


@njit
def bin_center(idx, min_val, max_val, num_bins):
    bin_width = (max_val - min_val) / num_bins
    return min_val + (idx + 0.5) * bin_width


@njit
def reflect_pad_2d(img, pad):
    """
    Reflect-padding for a 2D image (Numba-compatible).
    """
    h, w = img.shape
    padded = np.zeros((h + 2 * pad, w + 2 * pad), dtype=img.dtype)

    # Center
    padded[pad:pad + h, pad:pad + w] = img

    # Top and bottom
    for i in range(pad):
        padded[i, pad:pad + w] = img[pad - i, :]
        padded[h + pad + i, pad:pad + w] = img[h - i - 2, :]

    # Left and right
    for j in range(pad):
        padded[:, j] = padded[:, 2 * pad - j]
        padded[:, w + pad + j] = padded[:, w + pad - j - 2]

    return padded


@njit
def find_median_from_hist(hist, total_count, min_val, max_val, num_bins):
    """
    Compute approximate median from histogram.
    """
    cum_sum = 0
    threshold = total_count // 2
    for b in range(num_bins):
        cum_sum += hist[b]
        if cum_sum >= threshold:
            return bin_center(b, min_val, max_val, num_bins)
    return 0.0  # fallback

@njit
def sliding_window_histogram_median_2d_reused_pad(image, window_size, min_val, max_val, num_bins):
    H, W = image.shape
    pad = window_size // 2
    padded = reflect_pad_2d(image, pad)
    result = np.zeros_like(image)

    for i in range(pad, H + pad):
        hist = np.zeros(num_bins, dtype=np.int32)

        # Initial histogram
        for dx in range(-pad, pad + 1):
            for dy in range(-pad, pad + 1):
                val = padded[i + dx, pad + dy]
                b = bin_index(val, min_val, max_val, num_bins)
                hist[b] += 1

        result[i - pad, 0] = find_median_from_hist(hist, window_size**2, min_val, max_val, num_bins)

        for j in range(1, W):
            # Remove left column
            for dx in range(-pad, pad + 1):
                val = padded[i + dx, j - 1]
                b = bin_index(val, min_val, max_val, num_bins)
                hist[b] -= 1
            # Add right column
            for dx in range(-pad, pad + 1):
                val = padded[i + dx, j + 2 * pad]
                b = bin_index(val, min_val, max_val, num_bins)
                hist[b] += 1

            result[i - pad, j] = find_median_from_hist(hist, window_size**2, min_val, max_val, num_bins)

    return result


@njit(parallel=True)
def histogram_median_filter_batch_time(data, window_size, min_val, max_val, num_bins):
    t, x, y = data.shape
    result = np.zeros_like(data)

    for ti in prange(t):
        result[ti] = sliding_window_histogram_median_2d_reused_pad(
            data[ti], window_size, min_val, max_val, num_bins
        )

    return data - result  # return residual (original - background)

# _______________________________________________


def apoc_seg(clf, img, outdir, npix=600, npix_max=3500, bin_factor=2):
    """Segmentation using APOC library"""
    downsampled = np.copy(img)
    image = downsampled[:, 0, :, :]
    # FCC by division of a gaussian-blurred image
    normalize = normalize_background(image, sigma, gpu)
    downsampled[:, 0, :, :] = normalize
    downsampled = block_reduce(downsampled, block_size=(1, 1, bin_factor, bin_factor), func=np.mean)
    normalize = downsampled[:, 0, :, :]
    # Background subtraction of fluorescence by removing median-filtered image

    sub_c1 = histogram_median_filter_batch_time(downsampled[:, 1,:, :], window_size=141,
                                                min_val=0.0, max_val=16383.0, num_bins=8192)
    downsampled[:, 1, :, :] = sub_c1

    normalize = cle.push(normalize)
    # struct_element = disk(2)
    # struct_element = struct_element[np.newaxis, :, :]
    # struct_element = cle.asarray(struct_element)
    prediction = cle.create_like(normalize)
    for t in range(prediction.shape[0]):
        prediction[t] = clf.predict(normalize[t]) - 1

    filled = cle.binary_closing(
        cle.binary_opening(
            prediction, radius_x=2, radius_y=2, radius_z=0, connectivity='sphere'),
        radius_x=2, radius_y=2, radius_z=0, connectivity='sphere'
    )
    label_im = np.asarray(cle.connected_components_labeling(filled, connectivity='box'))

    # Tracking

    # ------------- initialise the global counter once -----------------
    next_cell_id = 0  # will keep growing across all frames
    # ------------------------------------------------------------------

    for t in range(normalize.shape[0]):  # loop over time
        if len(normalize[t]) == 0:
            raise ValueError("normalize[t] is empty. Check your input data.")
        # ------------------------------------------------------------------
        # SEGMENTATION (your code: prediction → label_im) -------------------
        # ------------------------------------------------------------------
        # prediction = ...
        # label_im   = label(filled[t])
        regions = regionprops(label_im[t])

        # keep only reasonable-size regions
        cells = [r for r in regions if npix < r.area < npix_max]
        # print(f"Frame {t}: {len(cells)} segmented regions")

        # ------------------------------------------------------------------
        # load previous-frame JSONs and assign consistent labels ------------
        # ------------------------------------------------------------------
        prev_paths = [] if t == 0 else glob.glob(os.path.join(
            outdir, f"mask_tf{t - 1}_apoc_cell*.json"))
        prev_data = read_previous_label_data(prev_paths)

        labels, next_cell_id = assign_labels_consistently(
            cells, prev_data, next_cell_id, d_thresh=50)

        # ------------------------------------------------------------------
        # MEASURE intensities, build masks, write JSON ----------------------
        # ------------------------------------------------------------------
        for cell, label_str in zip(cells, labels):
            # intensity over channels
            intensities, intensities_list = [], []
            for ch_img in downsampled[t]:
                pix = ch_img[cell.coords[:, 0], cell.coords[:, 1]]
                intensities.append(float(pix.sum()))
                intensities_list.append(pix.tolist())

            # pixel mask for contour
            from skimage.measure import find_contours

            # Create binary mask from cell coords
            mask = np.zeros(normalize[0].shape, dtype=bool)
            mask[cell.coords[:, 0], cell.coords[:, 1]] = True

            # Extract contours at the 0.5 level
            contours = find_contours(mask, level=0.5)

            # contours is a list of (N, 2) arrays. Use the longest contour (if multiple)
            contour = max(contours, key=len) if contours else np.array([])

            # Data to save
            rec = {
                "npixels": int(cell.area),
                "center": [float(cell.centroid[0]), float(cell.centroid[1])],
                "nchannels": len(downsampled[t]),
                "intensity": intensities,
                "label": label_str,
                "coords": cell.coords.tolist(),
                "xcoords": contour[:, 1].tolist(),
                "ycoords": contour[:, 0].tolist(),
                "intensity_list": intensities_list,
            }
            fname = os.path.join(outdir, f"mask_tf{t}_apoc_{label_str}.json")
            with open(fname, "w") as fh:
                json.dump(rec, fh)
        #     outname = os.path.join(outdir, 'mask_tf{}_apoc_{}'.format(count, celllabel))
        #     try:
        #         imsave(outname+'.tif',mask0)
        #     except IndexError:
        #         pass
        # union_mask = np.logical_or.reduce(masks)
        # background_mask = np.logical_not(union_mask)
        # outname = os.path.join(outdir, 'mask_tf{}_background.tif'.format(count))
        # try:
        #     imsave(outname, background_mask)
        # except IndexError:
        #     pass

#_______________________________________________
# class NpEncoder(json.JSONEncoder):
#     def default(self, obj):
#         if isinstance(obj, np.integer):
#             return int(obj)
#         if isinstance(obj, np.floating):
#             return float(obj)
#         if isinstance(obj, np.ndarray):
#             return obj.tolist()
#         return super(NpEncoder, self).default(obj)
#

#_______________________________________________
# @nb.njit(fastmath = True)
# def fastiter(image, thr=2., delta=1):
#     img_seeds=np.zeros(image.shape, dtype=bool_)
#     for i in range(image.shape[0]):
#         bkg=[]
#         for ii in range(-5,5):
#             iii=ii+i
#             if iii<0 or iii>image.shape[0]-1:continue
#             for jj in range(0,25):
#                 bkg.append(image[iii][jj])
#         bkg=np.array(bkg)
#         std=np.std(bkg)
#         for j in range(image.shape[1]):
#             sig=[]
#             for id in range(-delta, delta+1):
#                 if id+i<0 or id+i>image.shape[0]-1:continue
#                 for jd in range(-delta, delta+1):
#                     if jd+j<0 or jd+j>image.shape[1]-1:continue
#                     sig.append(image[i+id][j+jd])
#
#             if np.std(np.array(sig))>thr*std:
#                 img_seeds[i][j]=True
#     return img_seeds





#_______________________________________________
# def simpleSeg(img,  outdir, count, thr=2., delta=1, npix=400, npix_max = 5000):
#     image=img[0]
#     img_seeds=fastiter(image, thr, delta)
#
#     #dilated = binary_dilation(img_seeds, disk(2))
#     closed = binary_closing(img_seeds, disk(4))
#     filled = binary_fill_holes(closed).astype(int)
#     label_im = label(filled)
#
#     regions=regionprops(label_im)
#     cells=[]
#     for r in regions:
#         if r.area>npix and r.area<npix_max:
#             cells.append(r)
#
#     previous_labels=[]
#     if count>0:
#         previous_labels = glob.glob(os.path.join(outdir, 'mask_tf{}_thr{}delta{}_cell*.json'.format(count-1,thr,delta)))
#     extracount=0
#     for c in range(len(cells)):
#         minDist=1000000000
#         celllabel='cell{}'.format(c)
#         for pl in previous_labels:
#             pl_file = open(pl)
#             pl_data = json.load(pl_file)
#
#             dist=math.sqrt((pl_data['center'][0]-cells[c].centroid[0])*(pl_data['center'][0]-cells[c].centroid[0])+
#                     (pl_data['center'][1]-cells[c].centroid[1])*(pl_data['center'][1]-cells[c].centroid[1]))
#             if dist<minDist:
#                 minDist=dist
#                 celllabel=pl_data['label']
#
#         if minDist>50 and minDist<100000000:
#             celllabel='cell{}'.format(len(previous_labels)+extracount)
#             extracount+=1
#         intensities=[]
#         intensities_list=[]
#
#         for i in range(len(img)):
#             intensity=0
#             intensity_list=[]
#             for coord in cells[c].coords:
#                 intensity+=img[i][coord[0]][coord[1]]
#                 intensity_list.append(img[i][coord[0]][coord[1]])
#             intensities.append(intensity)
#             intensities_list.append(intensity_list)
#
#         mask0=np.zeros(img[0].shape, dtype=bool)
#         for coord in cells[c].coords:
#             mask0[coord[0]][coord[1]]=True
#         cs=plt.contour(mask0, [0.5],linewidths=1.2,  colors='red')
#         contcoords= cs.allsegs[0][0]
#
#
#         dic={
#             'npixels':cells[c].area,
#             'center':cells[c].centroid,
#             'nchannels':len(img),
#             'intensity':intensities,
#             'label':celllabel,
#             'coords':cells[c].coords,
#             'xcoords':contcoords[:,0],
#             'ycoords':contcoords[:,1],
#             'intensity_list':intensities_list
#         }
#         json_object = json.dumps(dic, cls=NpEncoder)
#
#         # Writing to <out>.json
#         outname=os.path.join(outdir, 'mask_tf{}_thr{}delta{}_{}.json'.format(count,thr,delta,celllabel))
#         with open(outname, "w") as outfile:
#             outfile.write(json_object)
#
#
#     #Take simple seg as default
#     celldic={}
#     celllist=glob.glob(os.path.join(outdir , 'mask_tf{}_thr{}delta{}_cell*.json'.format(count,2.,2)))
#     celllist.sort()
#     for cellid, cell in enumerate(celllist):
#
#         celldic[os.path.split(cell)[-1].split('_')[-1].replace('.json','')]={
# 			'mask':cell,
#         	'valid':True, #Set to False if user find out this cell is bad
# 		    'alive':True, #True/False
# 			'status':'single',  #'single, doublenuclei, multiplecells, pair from a menu'
#         	'isdividing':False, #True/False', can span over multiple TF
#             }
#
#
#     timeframedic={
#         'skipframe':False, #false by default
#         'cells':celldic
#             }
#     jsontf_object = json.dumps(timeframedic, indent=4)
#     outnametf=os.path.join(outdir, 'metadata_tf{}.json'.format(count))
#     if not os.path.isfile(outnametf):
#
#         with open(outnametf, "w") as outfiletf:
#             outfiletf.write(jsontf_object)