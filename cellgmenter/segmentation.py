"""Segment, track, and measure cells in time-lapse microscopy images.

The active pipeline expects image arrays ordered as ``(time, channel, y, x)``.
Bright-field channel 0 drives segmentation, while channel 1 receives the
fluorescence background correction. Scientific constants and operation order
in this module are intentionally left unchanged during documentation cleanup.
"""

from skimage.measure import regionprops, block_reduce
import numpy as np
import pyclesperanto as cle
import json
import glob
import os
import math

from numba import jit, prange, njit


# Background-normalization settings used by the active APOC pipeline.
gpu = False
sigma = 50


# Tracking helpers

def read_previous_label_data(paths):
    """Load previous-frame cell records in the supplied path order.

    The caller currently obtains ``paths`` from an unsorted glob. Their order
    therefore remains part of the greedy tracking behavior.
    """
    return [json.load(open(p)) for p in paths]


def euclidean(p, q):
    """Return the Euclidean distance between two ``(y, x)`` points."""
    return math.hypot(p[0] - q[0], p[1] - q[1])


def assign_labels_consistently(cells, prev_data, next_free_id, d_thresh=50):
    """Assign labels by greedy nearest-centroid matching to the prior frame.

    Cells are visited in their existing order. Each previous record can be
    reused once, and only when its centroid is at most ``d_thresh`` away.
    Unmatched cells receive monotonically increasing labels of the form
    ``cellN``.

    Returns:
        A pair containing one label per cell and the next unused numeric ID.
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
    """Divide an image stack by its Gaussian-smoothed background.

    Args:
        img: Image data accepted by pyclesperanto, normally ``(time, y, x)``.
        sigma: Gaussian scale applied in ``x`` and ``y``; no temporal blur is
            applied because ``sigma_z`` is zero.
        gpu: Whether to push ``img`` explicitly before calling pyclesperanto.

    Returns:
        The normalized stack as a NumPy array.
    """
    intensity_normalized = None

    if gpu:
        pushed = cle.push(img)
        intensity_normalized = cle.divide_by_gaussian_background(
            pushed,
            intensity_normalized,
            sigma_x=sigma,
            sigma_y=sigma,
            sigma_z=0,
        )
        # Converting to NumPy also pulls an explicitly pushed image from GPU memory.
        intensity_normalized = np.asarray(intensity_normalized)

    else:
        pushed = img
        intensity_normalized = cle.divide_by_gaussian_background(
            pushed,
            intensity_normalized,
            sigma_x=sigma,
            sigma_y=sigma,
            sigma_z=0,
        )
        intensity_normalized = np.asarray(intensity_normalized)

    return intensity_normalized


@jit(nopython=True)
def pad_with_reflect(data, pad_x, pad_y):
    """Pad a ``(time, row, column)`` array by mirroring edge values.

    This older helper duplicates boundary pixels. Its convention differs from
    :func:`reflect_pad_2d`, which is used by the active histogram filter.

    Args:
        data: Three-dimensional array ordered as ``(time, row, column)``.
        pad_x: Padding on the row axis.
        pad_y: Padding on the column axis.

    Returns:
        A padded array with the same dtype as ``data``.
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
    """Subtract an exact spatial median background from each time frame.

    This is an older alternative to the active histogram-based approximation.
    It converts its input to ``float32`` and does not filter across time.

    Args:
        img: Array ordered as ``(time, row, column)``.
        filter_size: Window dimensions ``(1, height, width)``.

    Returns:
        The ``float32`` residual ``img - median_background``.
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
                window = padded_data[t, x:x + f_x, y:y + f_y].flatten()
                # Partial sort to find the median
                median = np.partition(window, k)[k]
                filtered_data[t, x, y] = median

    result_32bit = data - filtered_data

    return result_32bit


@jit(nopython=True)
def random_sample_without_replacement(arr, sample_size):
    """Select values using a partial Fisher-Yates shuffle of array indices.

    This stochastic helper is retained from background-subtraction
    benchmarking and is not called by the active segmentation pipeline.
    """
    n = len(arr)
    indices = np.arange(n)
    for i in range(sample_size):
        j = np.random.randint(i, n)
        indices[i], indices[j] = indices[j], indices[i]
    return arr[indices[:sample_size]]


# Histogram-median background subtraction used by the active pipeline

@njit
def bin_index(val, min_val, max_val, num_bins):
    """Map a value to a histogram bin, clipping values outside the range."""
    if val <= min_val:
        return 0
    elif val >= max_val:
        return num_bins - 1
    return int((val - min_val) / (max_val - min_val) * (num_bins - 1))


@njit
def bin_center(idx, min_val, max_val, num_bins):
    """Return the intensity represented by the center of a histogram bin."""
    bin_width = (max_val - min_val) / num_bins
    return min_val + (idx + 0.5) * bin_width


@njit
def reflect_pad_2d(img, pad):
    """Pad a 2D image by reflecting values without duplicating its edge.

    Returns an array with the same dtype as ``img``. This custom convention is
    part of the fluorescence background correction and must remain stable.
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
    """Return the current histogram-based approximation of the median.

    The cumulative cutoff and bin-center convention are intentionally
    documented rather than replaced with a library median implementation.
    """
    cum_sum = 0
    threshold = total_count // 2
    for b in range(num_bins):
        cum_sum += hist[b]
        if cum_sum >= threshold:
            return bin_center(b, min_val, max_val, num_bins)
    return 0.0  # fallback


@njit
def sliding_window_histogram_median_2d_reused_pad(
    image,
    window_size,
    min_val,
    max_val,
    num_bins,
):
    """Approximate a 2D median background with a sliding histogram.

    The active call uses an odd window. Values outside the configured
    intensity range are accumulated in the first or last histogram bin, and
    the result keeps the input dtype.
    """
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
    """Subtract a per-frame histogram-median background from an image stack.

    Frames in ``(time, row, column)`` order are processed independently. The
    returned residual has the same shape and follows NumPy's input/output dtype
    behavior for the subtraction.
    """
    t, x, y = data.shape
    result = np.zeros_like(data)

    for ti in prange(t):
        result[ti] = sliding_window_histogram_median_2d_reused_pad(
            data[ti], window_size, min_val, max_val, num_bins
        )

    return data - result


# Active segmentation, tracking, and measurement pipeline


def apoc_seg(clf, img, outdir, npix=600, npix_max=3500, bin_factor=2):
    """Preprocess, segment, track, and measure a microscopy position.

    The input is expected in ``(time, channel, y, x)`` order with at least two
    channels. Channel 0 is divided by a Gaussian background and used for APOC
    classification. All channels are spatially mean-binned, after which
    channel 1 receives histogram-median background subtraction. Channels 2 and
    above are binned and measured without that subtraction.

    Cell regions are filtered with the exclusive bounds
    ``npix < area < npix_max``. Areas, centroids, coordinates, contours, and
    the 50-pixel tracking distance all refer to the binned image grid. Tracking
    is greedy, uses only the preceding frame's JSON files, and does not bridge
    missing frames.

    One JSON file is written per retained cell and frame. It contains summed
    and per-pixel values for every processed channel. Coordinates and centers
    use ``(row, column)`` order; contour coordinates are saved separately as
    ``xcoords`` and ``ycoords``. NaN values are allowed to propagate into the
    measurements and JSON output.

    Args:
        clf: Initialized APOC classifier exposing ``predict(image)``.
        img: Image array expected in ``(time, channel, y, x)`` order.
        outdir: Existing directory for per-cell JSON output.
        npix: Exclusive lower cell-area bound on the binned grid.
        npix_max: Exclusive upper cell-area bound on the binned grid.
        bin_factor: Mean-binning factor for both spatial dimensions.

    Returns:
        None. Results are written to ``outdir``.
    """
    downsampled = np.copy(img)
    image = downsampled[:, 0, :, :]

    # Normalize bright-field channel 0 before spatial binning.
    normalize = normalize_background(image, sigma, gpu)
    downsampled[:, 0, :, :] = normalize
    downsampled = block_reduce(
        downsampled,
        block_size=(1, 1, bin_factor, bin_factor),
        func=np.mean,
    )
    normalize = downsampled[:, 0, :, :]

    # Subtract the approximate spatial background from fluorescence channel 1.
    sub_c1 = histogram_median_filter_batch_time(
        downsampled[:, 1, :, :],
        window_size=141,
        min_val=0.0,
        max_val=16383.0,
        num_bins=8192,
    )
    downsampled[:, 1, :, :] = sub_c1

    # Classify each frame independently using normalized bright-field data.
    normalize = cle.push(normalize)
    prediction = cle.create_like(normalize)
    for t in range(prediction.shape[0]):
        prediction[t] = clf.predict(normalize[t]) - 1

    filled = cle.binary_closing(
        cle.binary_opening(
            prediction, radius_x=2, radius_y=2, radius_z=0, connectivity='sphere'),
        radius_x=2, radius_y=2, radius_z=0, connectivity='sphere'
    )

    # Connected components are intentionally computed on the complete stack.
    # CLE's 3D box-connectivity behavior therefore governs temporal adjacency.
    label_im = np.asarray(cle.connected_components_labeling(filled, connectivity='box'))

    # Labels start again for each position and increase across its frames.
    next_cell_id = 0

    for t in range(normalize.shape[0]):
        if len(normalize[t]) == 0:
            raise ValueError("normalize[t] is empty. Check your input data.")
        regions = regionprops(label_im[t])

        # Area thresholds are strict and apply after spatial binning.
        cells = [r for r in regions if npix < r.area < npix_max]

        # Existing previous-frame JSON files are the complete tracking state.
        prev_paths = [] if t == 0 else glob.glob(
            os.path.join(outdir, f"mask_tf{t - 1}_apoc_cell*.json")
        )
        prev_data = read_previous_label_data(prev_paths)

        labels, next_cell_id = assign_labels_consistently(
            cells,
            prev_data,
            next_cell_id,
            d_thresh=50,
        )

        for cell, label_str in zip(cells, labels):
            # Measure every processed channel through the bright-field mask.
            intensities, intensities_list = [], []
            for ch_img in downsampled[t]:
                pix = ch_img[cell.coords[:, 0], cell.coords[:, 1]]
                intensities.append(float(pix.sum()))
                intensities_list.append(pix.tolist())

            from skimage.measure import find_contours

            # Extract the longest boundary in (row, column) coordinates.
            mask = np.zeros(normalize[0].shape, dtype=bool)
            mask[cell.coords[:, 0], cell.coords[:, 1]] = True
            contours = find_contours(mask, level=0.5)
            contour = max(contours, key=len) if contours else np.array([])

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
