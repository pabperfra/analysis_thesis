"""Train and evaluate the APOC bright-field pixel classifier.

This script is the maintainable counterpart of ``pixel-classification.ipynb``.
It loads the labelled Zyla images, trains one classifier per feature-elimination
iteration, evaluates each classifier on the held-out test images, and saves the
models and score table below ``zyla/results_training``.

The training data is expected to follow this repository-local layout::

    zyla/
        training_data/images/
        training_data/labels/
        test_data/images/
        test_data/labels/

Image and label traversal order, the feature stack, model parameters, label
roles, continued-training order, and elimination rule are retained from the
notebook. Its explicit first-platform/first-device PyOpenCL context is also
created, although APOC and pyclesperanto manage the devices used for their own
operations.
"""

from pathlib import Path
import time

import apoc
import numpy as np
import pandas as pd
import pyclesperanto as cle
import pyopencl as cl
from skimage.io import imread


SCRIPT_DIR = Path(__file__).resolve().parent
ZYLA_DIR = SCRIPT_DIR / "zyla"

TRAINING_IMAGES_DIR = ZYLA_DIR / "training_data" / "images"
TRAINING_LABELS_DIR = ZYLA_DIR / "training_data" / "labels"
TEST_IMAGES_DIR = ZYLA_DIR / "test_data" / "images"
TEST_LABELS_DIR = ZYLA_DIR / "test_data" / "labels"
RESULTS_DIR = ZYLA_DIR / "results_training"
RESULTS_TABLE = RESULTS_DIR / "training_results.csv"

IMAGE_PATTERN = "*.tiff"
NUM_ENSEMBLES = 250
MAX_DEPTH = 5

RADII = [1, 2, 3, 5, 10, 15, 20, 30]
FILTERS = [
    "gaussian_blur",
    "mean_box",
    "top_hat_box",
    "maximum_box",
    "variance_box",
    "difference_of_gaussian",
    "sobel_of_gaussian_blur",
    "laplace_box_of_gaussian_blur",
    "small_hessian_eigenvalue_of_gaussian_blur",
    "large_hessian_eigenvalue_of_gaussian_blur",
]
ADDITIONAL_FEATURES = [
    "median_box=3",
    "median_box=5",
    "sobel_of_median_box=3",
    "sobel_of_median_box=5",
]


def initialize_opencl_context() -> cl.Context:
    """Create the first-platform/first-device context used by the notebook.

    The context is retained for the duration of ``main``. It is not passed to
    APOC or pyclesperanto because the notebook did not connect it to either
    library explicitly.
    """
    platform = cl.get_platforms()[0]
    device = platform.get_devices()[0]
    return cl.Context(devices=[device])


def discover_tiff_files(directory: Path) -> list:
    """Return TIFF paths in the filesystem order used by the notebook."""
    return list(directory.glob(IMAGE_PATTERN))


def validate_image_label_pairs(
    image_paths: list,
    label_paths: list,
    dataset_name: str,
) -> None:
    """Ensure separately discovered images and labels have matching names.

    The check does not sort or otherwise alter traversal order because training
    order can influence the resulting random forest.
    """
    image_names = [path.name for path in image_paths]
    label_names = [path.name for path in label_paths]
    if image_names != label_names:
        raise ValueError(
            f"{dataset_name} image and label files are missing or misordered."
        )


def load_training_data(image_paths: list, label_paths: list) -> tuple:
    """Load training pairs and push them to the pyclesperanto device.

    Training labels are converted to ``uint8`` before being pushed, matching
    the notebook. Images retain the dtype returned by ``skimage.io.imread``.
    """
    images = [cle.push(imread(path.as_posix())) for path in image_paths]
    labels = [
        cle.push(imread(path.as_posix()).astype("uint8"))
        for path in label_paths
    ]
    return images, labels


def load_test_data(image_paths: list, label_paths: list) -> tuple:
    """Load held-out image/label pairs into CPU memory for evaluation."""
    images = [imread(path.as_posix()) for path in image_paths]
    labels = [imread(path.as_posix()) for path in label_paths]
    return images, labels


def reduce_feature_df(
    feature_df: pd.DataFrame,
    n_drop: int = 1,
) -> pd.DataFrame:
    """Remove the least-important rows from an importance-sorted table.

    ``cl_file_features`` sorts features from greatest to least importance, so
    the final ``n_drop`` rows are the candidates removed at each iteration.
    """
    trimmed_df = feature_df[:-n_drop]
    return trimmed_df


def build_feature_str(feature_df: pd.DataFrame) -> str:
    """Build APOC's space-separated feature specification from a table."""
    return " ".join(feature_df["feature"].tolist())


def build_initial_feature_str() -> str:
    """Return the explicit 84-feature candidate stack from the notebook.

    The notebook later referenced an undefined ``initial_features_df``. This
    script uses the complete feature definition that is present in the saved
    notebook rather than depending on hidden interactive state.
    """
    scale_features = [
        f"{filter_name}={radius}"
        for filter_name in FILTERS
        for radius in RADII
    ]
    return " ".join(scale_features + ADDITIONAL_FEATURES)


def train_apoc_model(
    features: str,
    labels: list,
    images: list,
    cl_filename: str,
    num_ensembles: int = NUM_ENSEMBLES,
    max_depth: int = MAX_DEPTH,
) -> apoc.PixelClassifier:
    """Train a pixel classifier sequentially across labelled images.

    Any classifier already present at ``cl_filename`` is erased first. The
    first image initializes training; every later image continues the same
    model in the supplied list order.
    """
    apoc.erase_classifier(cl_filename)
    clf = apoc.PixelClassifier(
        opencl_filename=cl_filename,
        num_ensembles=num_ensembles,
        max_depth=max_depth,
    )
    clf.train(features=features, ground_truth=labels[0], image=images[0])
    for label, image in zip(labels[1:], images[1:]):
        clf.train(
            features=features,
            ground_truth=label,
            image=image,
            continue_training=True,
        )
    return clf


def train_apoc_object(
    features: str,
    labels: list,
    images: list,
    cl_filename: str,
    num_ensembles: int = NUM_ENSEMBLES,
    max_depth: int = MAX_DEPTH,
) -> apoc.ObjectSegmenter:
    """Train the notebook's optional APOC object-segmentation experiment.

    This helper is retained for manual experiments but is not part of the
    default pixel-classifier training entry point.
    """
    apoc.erase_classifier(cl_filename)
    clf = apoc.ObjectSegmenter(
        opencl_filename=cl_filename,
        num_ensembles=num_ensembles,
        max_depth=max_depth,
    )
    clf.train(features=features, ground_truth=labels[0], image=images[0])
    for label, image in zip(labels[1:], images[1:]):
        clf.train(
            features=features,
            ground_truth=label,
            image=image,
            continue_training=True,
        )
    return clf


def cl_file_features(cl_file_path: Path) -> pd.DataFrame:
    """Read an APOC classifier's feature names and importances.

    Returns a table sorted from greatest to least importance, with additional
    ``filter`` and numeric ``radius`` columns parsed from each feature name.
    """
    with open(cl_file_path, "r", encoding="utf-8") as classifier_file:
        lines = classifier_file.readlines()
        feature_lines = [
            line.strip()
            for line in lines
            if "feature_specification" in line or "feature_importance" in line
        ]

    feature_str = feature_lines[0].split("=", 1)[1].strip()
    feature_importance = feature_lines[1].split("=", 1)[1].strip()

    feature_dict = {
        feature: importance
        for feature, importance in zip(
            feature_str.split(" "),
            map(float, feature_importance.split(",")),
        )
    }
    feature_df = pd.DataFrame(
        list(feature_dict.items()),
        columns=["feature", "importance"],
    )
    feature_df = feature_df.sort_values(
        by="importance",
        ascending=False,
    ).reset_index(drop=True)

    feature_df[["filter", "radius"]] = feature_df["feature"].str.split(
        "=",
        expand=True,
    )
    feature_df["radius"] = feature_df["radius"].astype(float)
    return feature_df


def compute_dice_iou_with_ignore(
    ground_truth: np.ndarray,
    prediction: np.ndarray,
    foreground_label: int = 2,
    ignore_label: int = 0,
) -> tuple:
    """Compute foreground Dice and IoU while excluding ignored pixels.

    Label 2 is the foreground class and label 0 marks pixels excluded from the
    evaluation. If both masks are empty after exclusion, the corresponding
    score is defined as 1.0, matching the notebook.
    """
    valid_mask = ground_truth != ignore_label
    ground_truth_foreground = (
        ground_truth == foreground_label
    ) & valid_mask
    predicted_foreground = (prediction == foreground_label) & valid_mask

    intersection = np.logical_and(
        ground_truth_foreground,
        predicted_foreground,
    ).sum()
    union = np.logical_or(
        ground_truth_foreground,
        predicted_foreground,
    ).sum()

    foreground_total = ground_truth_foreground.sum() + predicted_foreground.sum()
    if foreground_total == 0:
        dice = 1.0
    else:
        dice = 2.0 * intersection / foreground_total

    iou = intersection / union if union != 0 else 1.0
    return dice, iou


def run_feature_elimination_loop(
    initial_features: str,
    labels: list,
    images: list,
    test_images: list,
    test_labels: list,
    output_dir: Path,
    num_ensembles: int = NUM_ENSEMBLES,
    max_depth: int = MAX_DEPTH,
    min_features: int = 10,
) -> pd.DataFrame:
    """Train, score, and reduce classifiers until the feature limit is met.

    Each iteration removes one least-important feature. The loop condition is
    deliberately strict: a classifier is trained while the current feature
    count is greater than ``min_features``.
    """
    output_dir.mkdir(parents=True, exist_ok=True)
    feature_string = initial_features
    feature_n = len(feature_string.split(" "))
    results = []
    iteration = 0

    while feature_n > min_features:
        cl_file = output_dir / f"pixel_classifier_iteration_{iteration}.cl"

        start_time = time.time()
        clf = train_apoc_model(
            features=feature_string,
            labels=labels,
            images=images,
            cl_filename=str(cl_file),
            num_ensembles=num_ensembles,
            max_depth=max_depth,
        )
        duration = time.time() - start_time

        predictions = [
            np.asarray(clf.predict(test_image))
            for test_image in test_images
        ]
        dice = [
            compute_dice_iou_with_ignore(test_label, prediction)[0]
            for test_label, prediction in zip(test_labels, predictions)
        ]
        iou = [
            compute_dice_iou_with_ignore(test_label, prediction)[1]
            for test_label, prediction in zip(test_labels, predictions)
        ]

        results.append(
            {
                "iteration": iteration,
                "num_features": feature_n,
                "features": feature_string,
                "cl_file": str(cl_file),
                "training_time": duration,
                "dice": dice,
                "iou": iou,
            }
        )

        feature_df = cl_file_features(cl_file)
        feature_reduced = reduce_feature_df(feature_df=feature_df)
        feature_string = build_feature_str(feature_df=feature_reduced)
        feature_n = len(feature_reduced)
        iteration += 1

    return pd.DataFrame(results)


def main() -> pd.DataFrame:
    """Load the Zyla data and run the notebook's feature-elimination workflow."""
    _opencl_context = initialize_opencl_context()

    training_image_paths = discover_tiff_files(TRAINING_IMAGES_DIR)
    training_label_paths = discover_tiff_files(TRAINING_LABELS_DIR)
    test_image_paths = discover_tiff_files(TEST_IMAGES_DIR)
    test_label_paths = discover_tiff_files(TEST_LABELS_DIR)

    validate_image_label_pairs(
        training_image_paths,
        training_label_paths,
        "training",
    )
    validate_image_label_pairs(test_image_paths, test_label_paths, "test")

    training_images, training_labels = load_training_data(
        training_image_paths,
        training_label_paths,
    )
    test_images, test_labels = load_test_data(test_image_paths, test_label_paths)

    initial_features = build_initial_feature_str()
    results = run_feature_elimination_loop(
        initial_features=initial_features,
        labels=training_labels,
        images=training_images,
        test_images=test_images,
        test_labels=test_labels,
        output_dir=RESULTS_DIR,
        num_ensembles=NUM_ENSEMBLES,
        max_depth=MAX_DEPTH,
        min_features=1,
    )
    results.to_csv(RESULTS_TABLE)
    return results


if __name__ == "__main__":
    main()
