# Study_ML

This repository collects short notebooks and examples created while reinforcing my understanding of machine learning and deep learning. Each directory focuses on a specific topic and new notebooks will be added as I learn more.

## Repository structure

### `math_for_ml`
Introductory mathematics used in machine learning. The notebooks have been reorganised into themed subfolders:

#### `01_vectors`
- **01_vector_operations.ipynb** – Walkthrough of fundamental vector math with NumPy. Covers vector definitions, addition, subtraction and scalar multiplication with small practical examples.
- **02_modulus_and_inner_product.ipynb** – Explores vector modulus (magnitude) and the inner (dot) product using NumPy and Matplotlib visualisations.
- **03_vector_projections.ipynb** – Connects the cosine rule with the dot product, offering geometric intuition.
- **04_vector_projections.ipynb** – Detailed explanation of scalar and vector projections with practical examples.
- **05_01_changing_basis.ipynb** – Demonstrates how to change coordinate bases using dot products and projections.
- **05_02_changing_basis_non_orthogonal.ipynb** – Extends basis changes to non‑orthogonal bases with examples.
- **06_basis_space_independence.ipynb** – Introduces vector spaces, linear independence and span with practical ML links.
- **07_application_of_changing_basis.ipynb** – Applies basis changes in small numerical examples.

#### `02_matrices`
- **01_Matrices_and_vectors.ipynb** – First look at matrices and how they interact with vectors.
- **02_how_matrices_transform_space.ipynb** – Visualises how matrices act as linear transformations on vector spaces.
- **03_Types_of_matrix_transformation.ipynb** – Illustrates scaling, rotations and other common transformations.
- **04_Matrix_Transformation_Composition.ipynb** – Shows how sequential matrix operations combine via multiplication and why order matters.
- **05_Gaussian_Elimination_Apples_Bananas_Carrots.ipynb** – Step-by-step example of solving a linear system with Gaussian elimination using a simple fruit pricing analogy.
- **06_Inverse_Matrix_Gaussian_Elimination.ipynb** – Demonstrates computing a matrix inverse by solving multiple systems via Gaussian elimination.
- **07_Determinants_and_Inverses.ipynb** – Introduces determinants, how they relate to area/volume scaling and their connection to invertibility.
- **08_Summary_of_concepts.ipynb** – Consolidates key matrix ideas in one place.
- **09_example_PCA.ipynb** – Applies PCA for dimension reduction using scikit-learn.

### `supervised_learning`
Experiments with classical regression algorithms using scikit‑learn.

- **01_basic_regression.ipynb** – Generates synthetic data and trains a linear regression model. Demonstrates baseline evaluation, pipeline construction, regularisation with `Ridge`, cross‑validation and bias–variance analysis.
- **02_ridge_regression.ipynb** – Deep dive into Ridge regularisation and model stability.
- **03_lasso_regression.ipynb** – Introduces Lasso for automatic feature selection.
- **04_lightgbm_regression.ipynb** – Demonstrates gradient boosting with LightGBM.
- **05_capstone_regression.ipynb** – Complete pipeline with nested cross-validation and performance analysis.
- **06_when_to_select_what.ipynb** – Decision framework outlining when to choose each algorithm.
- `model_artifacts/` – Saved models, preprocessing pipeline and performance report.

### `Eeg_analysis` and `Fmri_analysis`
Placeholders for future notebooks exploring EEG and fMRI data.

### `additional_documents`
Supplementary spreadsheets containing reference notes from documentation.

- **scikit_documentations.xlsx** – Highlights and reminders taken from the scikit-learn user guide.
- **tensorflow_documentations.xlsx** – Key points summarised from the TensorFlow documentation.
