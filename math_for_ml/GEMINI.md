# Math for ML Study Repository

## Project Overview
This is a comprehensive study repository designed for mastering "Mathematics for Machine Learning." It follows the curriculum of the Imperial College London specialization, bridging the gap between theoretical concepts and practical implementation using Python.

The project covers two main pillars:
1.  **Linear Algebra:** Vectors, Matrices, Eigenvalues/Eigenvectors, and PCA.
2.  **Multivariate Calculus:** Derivatives, Gradients, Jacobians, Hessians, and Neural Network Backpropagation.

## Directory Structure

*   **`01_linear_algebra/`**: Contains Jupyter Notebooks for linear algebra concepts.
    *   `01_vectors/`: Vector operations, dot products, projections.
    *   `02_matrices_01/` & `02_matrices_02/`: Matrix transformations, inverse matrices, basis changes.
    *   `03_eigenproblems/`: Eigenvalues, eigenvectors, PageRank algorithm.
*   **`02_multivariate_calculus/`**: Contains Jupyter Notebooks for calculus.
    *   `01_foundations/`: Functions, derivatives, chain rule.
    *   `02_calculus/`: Jacobian, Hessian, multivariate derivatives.
    *   `03_multivariate_chain_rule/`: Simple neural networks and backpropagation.
*   **`transcripts/`**: Lecture transcripts corresponding to the modules, useful for text-based review.
*   **`additional_resources/`**: Formula sheets and PDF references.
*   **`conductor/`**: Project management files, including the product guide (`product.md`), tech stack (`tech-stack.md`), and workflow (`workflow.md`).

## Tech Stack & Environment

*   **Language:** Python
*   **Interactive Environment:** Jupyter Notebooks (`.ipynb`)
*   **Key Libraries:**
    *   `numpy`: For vector and matrix operations.
    *   `matplotlib`: For visualizations.

## Development & Usage

### 1. Running the Notebooks
To start studying, launch the Jupyter environment:
```bash
jupyter notebook
# or
jupyter lab
```
Navigate to the desired module (e.g., `01_linear_algebra/01_vectors/`) and open the `.ipynb` files.

### 2. Workflow Guidelines
This project uses the **Conductor** workflow (detailed in `conductor/workflow.md`).
*   **Plan:** The file `conductor/plan.md` (implied) or `conductor/tracks/` contains the task list.
*   **Source of Truth:** Always refer to `conductor/product.md` for feature definitions.
*   **Code Style:** Adhere to Python guidelines in `conductor/code_styleguides/python.md`.

## Key Files
*   `conductor/product.md`: detailed product guide and learning goals.
*   `conductor/tech-stack.md`: Defined technologies and libraries.
*   `conductor/workflow.md`: Strict task management and TDD workflow instructions.
