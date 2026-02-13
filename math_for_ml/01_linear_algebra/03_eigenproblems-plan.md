# Plan: 03_eigenproblems - Mastery of Eigenvalues & Eigenvectors

## 1. Vision & Goals
**Goal:** Transform the current Eigenproblems module into a highly intuitive, visually rich, and mathematically rigorous learning path. The focus shifts from rote calculation to geometric understanding, culminating in the PageRank algorithm.

**Key Principles:**
- **Intuition First:** Visualizing $Av = \lambda v$ before solving $\det(A - \lambda I) = 0$.
- **Interactive:** Use `matplotlib` to show vector transformations and stable spans.
- **Code-First:** Implement concepts in Python alongside theory.
- **One Topic per Notebook:** Deep focus rather than scattered concepts.

## 2. Current Status
*   `01_introduction.ipynb` (Theory heavy)
*   `02_special_eigen_cases.ipynb` (Good, but maybe too early?)
*   `03_calculating_eigenvectors.ipynb` (Calculation focus)
*   `03b_visual_intuation.ipynb` (Crucial intuition, but buried)
*   `04_changing_to_eigenbasis.ipynb` (Advanced concept)
*   `05_eigenbasis_example.ipynb` (Example)
*   `06_introduction_pagerank.ipynb` (Application intro)
*   `06b_PageRank_codingexercise.ipynb` (Application code)

## 3. Restructuring Plan (New Order)

We will reorder and consolidate the notebooks to follow the "Intuition -> Theory -> Calculation -> Advanced -> Application" flow.

| Order | New Filename | Focus | Source Notebooks |
| :--- | :--- | :--- | :--- |
| 1 | `01_Visualizing_Eigenvectors.ipynb` | Geometric intuition, what is an eigenvector? | `03b_visual_intuation`, `01_introduction` |
| 2 | `02_Calculating_Eigenvalues.ipynb` | The characteristic equation, manual calculation. | `03_calculating_eigenvectors` |
| 3 | `03_Special_Matrices.ipynb` | Rotation, Shearing, Symmetric matrices. | `02_special_eigen_cases` |
| 4 | `04_Eigenbasis_and_Diagonalization.ipynb` | Changing basis, $P D P^{-1}$. | `04_changing_to_eigenbasis`, `05_eigenbasis_example` |
| 5 | `05_Application_PageRank.ipynb` | Markov chains, Power Iteration. | `06_introduction_pagerank`, `06b_PageRank_codingexercise` |

## 4. Detailed Content per Notebook

### 1. `01_Visualizing_Eigenvectors.ipynb`
*   **Objective:** Understand that eigenvectors are vectors that span lines which do not rotate during transformation.
*   **Key Concepts:**
    *   Linear transformations as space distortions.
    *   Visualizing $Av$ vs $v$.
    *   The equation $Av = \lambda v$ (Geometric interpretation).
    *   Scaling factors (Eigenvalues).
*   **Visualization Tasks:**
    *   Create a "vector field" or "circle of vectors" plot.
    *   Apply a transformation matrix $A$.
    *   Highlight the vectors that maintained their direction.
*   **Python:** Define a matrix, apply it to various vectors, plot input vs output.

### 2. `02_Calculating_Eigenvalues.ipynb`
*   **Objective:** Learn the algebraic mechanism to find $\lambda$ and $v$.
*   **Key Concepts:**
    *   Determinants recap (volume scaling).
    *   Why $\det(A - \lambda I) = 0$? (The singular matrix intuition).
    *   Solving for vectors using Gaussian elimination (conceptually).
*   **Python:** 
    *   Step-by-step implementation of the characteristic equation for 2x2 matrices.
    *   Use `numpy.linalg.eig` and verify results manually.

### 3. `03_Special_Matrices.ipynb`
*   **Objective:** Explore how specific matrix properties affect eigenvalues.
*   **Key Concepts:**
    *   **Rotation:** Why do 90-degree rotations have no real eigenvectors? (Complex eigenvalues).
    *   **Shear:** Degenerate eigenvalues.
    *   **Symmetric:** The spectral theorem (real eigenvalues, orthogonal eigenvectors).
    *   **Diagonal:** Eigenvalues are diagonal entries.
*   **Visualizations:** Show rotation (vectors always change direction) vs scaling.

### 4. `04_Eigenbasis_and_Diagonalization.ipynb`
*   **Objective:** Understand the power of changing to the eigenbasis.
*   **Key Concepts:**
    *   Eigenvectors as a new coordinate system (Basis).
    *   The change of basis matrix $C$ (columns are eigenvectors).
    *   Diagonalization: $A = C D C^{-1}$.
    *   Decoupling systems of equations.
*   **Python:** 
    *   Compute $A^{k}$ for large $k$ using diagonalization vs direct multiplication (benchmark time).
    *   Visual proof: Transforming to eigenbasis, applying scale, transforming back.

### 5. `05_Application_PageRank.ipynb`
*   **Objective:** Build a mini-Google search engine algorithm.
*   **Key Concepts:**
    *   The web as a directed graph.
    *   Adjacency matrices and Stochastic matrices.
    *   The Principal Eigenvector ($\lambda=1$).
    *   Power Iteration method (finding eigenvectors iteratively).
*   **Project:** 
    *   Define a small internet (5-10 nodes).
    *   Implement iterative PageRank.
    *   Compare with `numpy.linalg.eig`.

## 5. Technical Requirements
*   **Libraries:** `numpy`, `matplotlib.pyplot`.
*   **Helper Functions:** Create a `plot_vectors(vectors, colors)` helper in a shared utility file or at the top of notebooks to reduce boilerplate code.

## 6. Execution Plan
1.  **Backup:** Duplicate current folder to `03_eigenproblems_backup`.
2.  **Rename:** Rename files to targeted names (consolidating content).
3.  **Refactor:**
    *   Move visualization code from old `03b` to new `01`.
    *   Merge PageRank files into one comprehensive application notebook.
    *   Merge Eigenbasis files.
4.  **Verify:** Run all notebooks to ensure paths and imports remain valid.
