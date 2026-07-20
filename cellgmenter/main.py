"""Run the segmentation workflow for a microscopy experiment.

The script discovers projects and microscopy positions below the supplied
data path, creates metadata files when needed, and delegates image processing
to :func:`segmentation.apoc_seg`. The current scientific settings are retained
here explicitly so that changes to them remain easy to review.
"""

import segmentation as seg
import os
import glob
import json
import apoc
import argparse
import multiprocessing
import numpy as np
import time
import nd2


def process_position(pos, path_meta, proj, position_filter, project_data, clf):
    """Load, segment, and save the results for one microscopy position.

    The loaded ND2 array is expected to have axes ``(time, channel, y, x)``.
    ``apoc_seg`` uses channel 0 for segmentation, applies fluorescence
    background correction to channel 1, and records per-cell intensity for
    every channel. If ``position_filter`` is set, only paths containing that
    text are processed.

    Results and a ``position.json`` file are written below the project's
    metadata directory. The classifier, thresholds, and processing details are
    intentionally passed through unchanged to ``segmentation.apoc_seg``.

    Args:
        pos: Discovered path to a position image.
        path_meta: Root directory for generated metadata and cell results.
        proj: Name of the project containing the position.
        position_filter: Optional text used to select a position path.
        project_data: Loaded project metadata dictionary.
        clf: Initialized APOC pixel classifier.
    """
    if position_filter is not None and str(position_filter) not in pos:
        print('skip position ', pos)
        return

    print('position = ', pos)

    # Keep each position's metadata and per-cell results in its own directory.
    position_dir = os.path.join(
        path_meta,
        proj,
        os.path.split(pos)[-1].replace('.nd2', '').replace('.tif', ''),
    )
    if not os.path.exists(position_dir):
        os.makedirs(position_dir)

    position_meta = os.path.join(position_dir, 'position.json')
    if not os.path.isfile(position_meta):
        with open(position_meta, "w") as outfile_pos:
            position_dic = {
                'name': pos,
                'experimentalcondition': 'changeme',
                'dissociationtime': 'changeme',
                'startofmovie': 'changeme',
                'numberofframes': -1,
            }
            json_object = json.dumps(position_dic, indent=4)
            outfile_pos.write(json_object)

    # Load the position metadata
    with open(position_meta) as positionfile_data:
        position_data = json.load(positionfile_data)
        if position_data['name'] not in project_data['positions']:
            project_data['positions'].append(position_data['name'])
            project_data['numberofpos'] = len(project_data['positions'])

    # APOC currently receives only ND2 data from this entry point.
    if '.nd2' in os.path.split(position_data['name'])[-1]:
        with nd2.ND2File(position_data['name']) as nd2position:
            image = nd2position.asarray()
            image = image.astype(np.float32)
    else:
        print('unsupported image format')
        return

    print(position_data['name'])
    print('apoc seg')
    start_t = time.time()
    # Keep cells with 250 < area < 4500 after APOC's two-fold spatial binning.
    seg.apoc_seg(clf, image, position_dir, npix=250, npix_max=4500)
    stop_t = time.time()
    print(stop_t-start_t)


def worker(position_chunk, path_meta, proj, position_filter, project_data, clf):
    """Process one chunk of position paths inside a pool worker."""
    for pos in position_chunk:
        process_position(
            pos,
            path_meta,
            proj,
            position_filter,
            project_data,
            clf,
        )


def parse_arguments(argv=None):
    """Parse command-line options for the segmentation workflow."""
    parser = argparse.ArgumentParser(
        description="Segment the microscopy positions in an experiment directory."
    )
    parser.add_argument(
        "--path",
        required=True,
        help="experiment root containing project directories",
    )
    parser.add_argument("--project", help="project name to run", type=str)
    parser.add_argument("--position", help="position to run", type=str)
    return parser.parse_args(argv)


def run_analysis(path, project=None, position=None):
    """Run the workflow for a manually supplied experiment root.

    The expected directory layout is ``path/project/position.nd2``. Passing a
    project or position applies the same optional filters exposed by the
    command-line interface.

    Args:
        path: Experiment root containing one directory per project.
        project: Optional project name to process exclusively.
        position: Optional text used to select position paths.
    """
    path_meta = os.path.join(path, "metadata")
    if not os.path.exists(path_meta):
        os.makedirs(path_meta)

    project_list = os.listdir(path)
    project_list = [x for x in project_list if x[0] != '.' and 'metadata' not in x]
    project_list.sort()
    print('project list ', project_list)

    # The classifier path is resolved relative to the working directory.
    clf = apoc.PixelClassifier(opencl_filename="zyla_40_retrained.cl")

    if project is not None:
        project_list = [project]

    for proj in project_list:
        position_list = []
        for p in glob.glob(os.path.join(path, proj, '*')):
            if 'metadata' not in p:
                position_list.append(p)
        position_list.sort()
        print('position list ', position_list)

        # Create project metadata once, then preserve any manual edits to it.
        project_dir = os.path.join(path_meta, proj)
        if not os.path.exists(project_dir):
            os.makedirs(project_dir)
        project_meta = os.path.join(path_meta, proj, 'project.json')
        if not os.path.isfile(project_meta):
            with open(project_meta, "w") as outfile_proj:
                project_dic = {
                    'name': proj,
                    'date': 'changeme',
                    'microscope': 'changeme',
                    'author': 'changeme',
                    'contributors': 'changeme',
                    'numberofpos': len(position_list),
                    'positions': position_list
                }
                json_object = json.dumps(project_dic, indent=4)
                outfile_proj.write(json_object)

        # Load the project metadata
        with open(project_meta) as projectfile_data:
            project_data = json.load(projectfile_data)

        # Preserve the existing single-worker isolation and chunking behavior.
        n_cores = 1
        chunks = np.array_split(position_list, n_cores)
        print(position_list)

        with multiprocessing.Pool(n_cores) as pool:
            pool.starmap(
                worker,
                [
                    (chunk, path_meta, proj, position, project_data, clf)
                    for chunk in chunks
                ],
            )

        with open(project_meta, "w") as outfile_proj:
            project_data['positions'].sort()
            json_object = json.dumps(project_data, indent=4)
            outfile_proj.write(json_object)


def main(argv=None):
    """Run the command-line entry point."""
    args = parse_arguments(argv)
    return run_analysis(args.path, project=args.project, position=args.position)


if __name__ == '__main__':
    main()
