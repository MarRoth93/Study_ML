# Improvement Plan: Linear Algebra - Vectors

## Goal
Restructure and enhance the `01_vectors` module to provide a seamless, intuitive, and rigorously practical introduction to vectors for Machine Learning. The focus is on bridging geometric intuition with NumPy implementation.

## 1. Restructuring Plan

The current file structure has some naming inconsistencies (e.g., `03` is named projections but covers cosine rule) and redundancy.

**Current Structure:**
- `01_vector_operations.ipynb`
- `02_modulus_and_inner_product.ipynb`
- `03_vector_projections.ipynb` (Actually covers Cosine Rule & Dot Product)
- `04_vector_projections.ipynb` (Actually covers Projections)
- `05_01_changing_basis.ipynb`
- `05_02_changing_basis_non_orthogonal.ipynb`
- `06_basis_space_independence.ipynb`
- `07_application_of_changing_basis.ipynb`

**Proposed Structure:**

| New Filename | Source Files | Description |
| :--- | :--- | :--- |
| **01_vector_operations.ipynb** | `01_vector_operations.ipynb` | Basic arithmetic, visualization of vectors as arrows. |
| **02_dot_product_and_angles.ipynb** | `02_modulus...` + `03_vector...` (Cosine content) | Modulus, Dot Product definition, Geometric interpretation (Cosine rule), Angle between vectors. |
| **03_projections.ipynb** | `04_vector_projections.ipynb` | Scalar and Vector projections, shadow analogy. |
| **04_basis_and_independence.ipynb** | `06_basis_space...` | Linear independence, span, basis vectors, coordinate systems. |
| **05_changing_basis.ipynb** | `05_01...` + `05_02...` | Concept of changing basis, orthogonal vs non-orthogonal cases, inverse matrices intro. |
| **06_applications_of_basis.ipynb** | `07_application...` | Real-world example (e.g., color space, compression) showing why we change basis. |

---

## 2. Detailed Content Improvements

### 01_vector_operations.ipynb
*   **Visualizations:** Ensure every operation (add, sub, scalar mult) has a 2D matplotlib plot showing the "tip-to-tail" method.
*   **Code:** Use `numpy.array` standardly.
*   **Exercise:** Create a function to plot multiple vectors easily.

### 02_dot_product_and_angles.ipynb
*   **Consolidation:** Merge the "Modulus/Inner Product" basics with the "Cosine Rule" geometric intuition.
*   **Intuition:** Explicitly show how $u \cdot v > 0$ means acute angle, $u \cdot v < 0$ means obtuse, and $u \cdot v = 0$ means orthogonal.
*   **ML Connection:** Mention Cosine Similarity (used in NLP/Recommendation systems).

### 03_projections.ipynb
*   **Clarification:** Distinguish clearly between *scalar projection* (length) and *vector projection* (vector).
*   **Visuals:** Animated or static plots showing the "shadow" of one vector on another.
*   **Code:** Implement a reusable `project_vector(u, v)` function.

### 04_basis_and_independence.ipynb
*   **Flow:** Move this earlier (before changing basis) as it defines *what* a basis is.
*   **Concepts:** Span, Linear Combination, Linear Independence.
*   **Visuals:** Show grid lines for different bases (Cartesian vs. skewed).

### 05_changing_basis.ipynb
*   **Merger:** Combine orthogonal and non-orthogonal examples into one cohesive narrative.
*   **Matrix Intro:** Introduce the change-of-basis matrix $P$ and its inverse $P^{-1}$ gently, paving the way for the Matrices module.
*   **Step-by-Step:**
    1.  Express vector $v$ in Basis B.
    2.  Transform to Standard Basis (easy).
    3.  Transform from Standard Basis to Basis B (requires inverse/system solving).

### 06_applications_of_basis.ipynb
*   **Context:** Make the application concrete. If it's image manipulation or signal processing, explain the *why*.
*   **PCA Teaser:** Mention that finding the "best" basis is what PCA does (link to future module).

---

## 3. General Enhancements

*   **Standardize Imports:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt
    %matplotlib inline
    ```
*   **Helper Functions:** Create a `utils.py` or include a helper cell in `01` for plotting vectors (quiver plots) to avoid repeating boilerplate code.
*   **Callout Boxes:** Use markdown blockquotes for "Key Takeaways" and "Math Notes".
*   **Navigation:** Add links at the bottom of each notebook to the next one.

## 4. Immediate Action Items
1.  Rename `03_vector_projections.ipynb` to `02_b_cosine_rule_temp.ipynb` (to avoid confusion during merge).
2.  Rename `04_vector_projections.ipynb` to `03_projections.ipynb`.
3.  Rename `06_basis_space_independence.ipynb` to `04_basis_and_independence.ipynb`.
4.  Perform the content merges.
