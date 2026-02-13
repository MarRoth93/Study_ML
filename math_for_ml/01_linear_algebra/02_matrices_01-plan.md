# Improvement Plan: Matrix Foundations (02_matrices_01)

## 1. Overview
The `02_matrices_01` module focuses on the fundamental operations, geometric interpretations, and algebraic properties of matrices. The goal is to transition the learner from simple vector operations to understanding matrices as dynamic linear transformations and efficient tools for solving systems of equations.

## 2. Restructuring & Naming
**Standardization**: Rename all files to use consistent `snake_case` and concise numbering.

| Current File | Proposed New Name | Action |
| :--- | :--- | :--- |
| `01_Matrices_and_vectors.ipynb` | `01_matrices_and_vectors.ipynb` | Rename |
| `02_how_matrices_transform_space.ipynb` | `02_linear_transformations.ipynb` | Rename |
| `03_Types_of_matrix_transformation.ipynb` | `03_transformation_types.ipynb` | Rename |
| `04_Matrix_Transformation_Composition.ipynb` | `04_transformation_composition.ipynb` | Rename |
| `05_Gaussian_Elimination_...ipynb` | `05_gaussian_elimination.ipynb` | Rename |
| `06_Inverse_Matrix_Gaussian_Elimination.ipynb` | `06_inverse_matrices.ipynb` | Rename |
| `07_Determinants_and_Inverses.ipynb` | `07_determinants.ipynb` | Rename |
| `08_Summary_of_concepts.ipynb` | `08_matrices_01_summary.ipynb` | Rename |
| `09_example_PCA.ipynb` | **Move to `03_eigenproblems`** | **Move** |

**Rationale for Move**: PCA is fundamentally an application of eigendecomposition. Introducing it before eigenvalues/eigenvectors are defined can be confusing. It will serve as a perfect "capstone" for the `03_eigenproblems` module.

## 3. Detailed Content Improvements

### 01_matrices_and_vectors.ipynb
*   **Objective**: Define matrices, rows, columns, and basic arithmetic.
*   **Additions**:
    *   **NumPy Basics**: Explicit section on `np.array`, `shape`, `dtype`.
    *   **Broadcasting**: Briefly introduce how scalars interact with matrices in NumPy.
    *   **Visual**: "Row picture" vs "Column picture" of matrix multiplication.

### 02_linear_transformations.ipynb
*   **Objective**: Visualize matrices as functions that distort space.
*   **Visualizations**:
    *   **Grid Deformation**: Use `matplotlib` to show a square grid transforming into a skewed grid.
    *   **Basis Vectors**: Highlight $\hat{i}$ and $\hat{j}$ moving to new locations.
*   **Concept**: Emphasize that the columns of the matrix *are* the new coordinates of the basis vectors.

### 03_transformation_types.ipynb
*   **Objective**: Catalog common 2D transformations.
*   **Specifics**:
    *   **Rotation**: Derive the rotation matrix $[\cos \theta, -\sin \theta; \sin \theta, \cos \theta]$.
    *   **Shear**: Visualizing "sliding" space.
    *   **Scaling**: Uniform vs Non-uniform.
    *   **Identity**: The "do nothing" matrix.

### 04_transformation_composition.ipynb
*   **Objective**: Matrix multiplication as sequential application of functions.
*   **Key Insight**: **Order Matters** ($AB \neq BA$).
*   **Visual**: Show "Rotate then Shear" vs "Shear then Rotate".
*   **Code**: `np.matmul(A, B)` vs `A @ B`.

### 05_gaussian_elimination.ipynb
*   **Objective**: Systematically solve $Ax = b$.
*   **Interactive**: Keep the "Apples/Bananas" example but make the code cleaner.
*   **Algorithm**: Step-by-step visualization of row operations (Scale, Add, Swap).
*   **Matrices**: Introduce "Augmented Matrices".

### 06_inverse_matrices.ipynb
*   **Objective**: The concept of "undoing" a transformation.
*   **Connection**: Gaussian Elimination $\to$ Finding $A^{-1}$ (Jordan method).
*   **Singularity**: Introduce the concept of a matrix that *cannot* be inverted (squashes space to a line/point).

### 07_determinants.ipynb
*   **Objective**: A single number summary of the transformation.
*   **Geometric Meaning**: The scaling factor of the area (2D) or volume (3D).
*   **Connection**: $\det(A) = 0 \iff$ Singular (No Inverse).
*   **Orientation**: Negative determinant implies "flipping" space (chirality change).

### 08_matrices_01_summary.ipynb
*   **Objective**: Quick reference and cheat sheet.
*   **Content**: Consolidate key formulas, numpy commands, and concepts.

## 4. Technical Guidelines
*   **Libraries**: Standardize on `numpy` and `matplotlib.pyplot`.
*   **Style**: Use the project's plotting helper functions (if available) or create a local `utils.py` for consistent grid plotting to avoid repetitive code in notebooks.
*   **Exercises**: Each notebook should end with 1-2 small coding tasks (e.g., "Write a function to rotate a vector by theta degrees").
