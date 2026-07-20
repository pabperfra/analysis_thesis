# Bioimage Analysis Repository

## Overview

This repository contains a scientific Python workflow for analysing single cells in time-lapse microscopy images. It combines bright-field images, used mainly to identify and segment cells, with fluorescence images, used to measure molecular activity over time.

The repository also contains example experiments, trained segmentation models, analysis notebooks, and previously generated results. It should currently be treated as a record of an established research workflow rather than as a ready-to-install software package.

## Repository contents

### `random_forest_training/`

This folder contains the material used to train and evaluate the bright-field segmentation model.

- `pixel-classification.ipynb` contains the model-training workflow.
- The `zyla/` and `prime_95b/` folders contain labelled training and test images from different camera setups, together with generated model files.

Model training is not normally required when analysing a new experiment. It is included mainly for scientific provenance and future model development.

### `cellgmenter/`

This is the main image-processing part of the repository.

- `main.py` is the main script used to find and load microscopy image files and start the analysis.
- `segmentation.py` prepares the images, identifies cells, follows them between frames, measures their fluorescence, and saves the results for each cell and time point.
- `zyla_40_retrained.cl` is the trained model used to recognise cells in bright-field images.

### `analysis_utils/`

This folder contains reusable analysis notebooks and supporting Python utilities.

The notebooks in `analysis_utils/templates/` cover the main stages after segmentation:

- collecting fluorescence measurements into one trace per cell;
- preparing bright-field images for visual inspection;
- extracting cell outlines;
- reviewing traces, cell shape, segmentation quality, and possible cell death;
- marking peaks, troughs, and important time points;
- preparing plots and summaries.

The `time_domain_analysis/` folder contains additional tools for studying signal timing, oscillation periods, peak behaviour, and related measurements.

### `chx_exp/`

This folder contains saved data and notebooks from cycloheximide experiments, principally `ppf021`, `ppf024`, and `ppf025`.

It includes:

- per-cell segmentation results for individual frames;
- extracted fluorescence traces;
- cell contours;
- manually reviewed peak and time-of-death information;
- oscillation and wavelet results;
- fitted decay rates and half-lives;
- experiment-specific figures and notebooks.

These files are useful as worked examples and as reference outputs.

## Typical analysis flow

The intended workflow is broadly:

1. Load a time-lapse microscopy file for one imaging position.
2. Use the bright-field channel to prepare the image and identify cells.
3. Follow detected cells from one frame to the next.
4. Measure fluorescence inside each cell mask.
5. Save cell positions, outlines, and fluorescence measurements.
6. Combine those measurements into a time series for each cell.
7. Review traces alongside bright-field images and cell outlines to reject poor segmentation, invalid morphology, or dead cells.
8. Mark peaks, troughs, oscillation limits, and other relevant time points.
9. Calculate downstream measurements such as oscillation periods, fluorescence decay rates, and half-lives.

## Proposed improvements for production
Current issues:
- The repository does not yet have a documented installation environment or pinned dependency versions.
- The original raw microscopy files are not included. Many saved results still refer to their former Windows network paths.
- The workflow is split between Python scripts and interactive notebooks rather than exposed through one complete command.
- Several experiment notebooks are copies or adaptations of earlier notebooks and contain experiment-specific settings.
- Some saved results were generated before the current copies of the processing scripts were added to this repository. They are valuable reference data, but their exact production environment still needs to be reconstructed.
- Automated tests have not yet been added.

The next cleanup steps should therefore focus first on documenting the scientific settings and adding small reference tests. Image channels, segmentation behaviour, model configuration, tracking rules, background correction, quality-control decisions, and missing-value handling should remain unchanged unless a change is reviewed and approved explicitly.
