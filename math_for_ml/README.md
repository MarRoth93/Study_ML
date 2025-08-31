# Math for ML — Notebooks Overview

This repository contains educational Jupyter notebooks that build linear algebra intuition for machine learning. Below is an index of all notebooks with one‑line summaries.

## 01 — Vectors
- [01_vector_operations.ipynb](01_vectors/01_vector_operations.ipynb): Fundamental NumPy vector ops (definitions, arithmetic, simple ML context).
- [02_modulus_and_inner_product.ipynb](01_vectors/02_modulus_and_inner_product.ipynb): Vector magnitude and inner product basics.
- [03_vector_projections.ipynb](01_vectors/03_vector_projections.ipynb): Geometric view of dot product and angles between vectors.
- [04_vector_projections.ipynb](01_vectors/04_vector_projections.ipynb): Scalar/vector projections, link to dot product, orthogonality.
- [05_01_changing_basis.ipynb](01_vectors/05_01_changing_basis.ipynb): What bases are, why change them, and how via dot products.
- [05_02_changing_basis_non_orthogonal.ipynb](01_vectors/05_02_changing_basis_non_orthogonal.ipynb): Non‑orthogonal bases — considerations and pitfalls. (WIP)
- [06_basis_space_independence.ipynb](01_vectors/06_basis_space_independence.ipynb): Vector spaces and linear independence — core foundations.
- [07_application_of_changing_basis.ipynb](01_vectors/07_application_of_changing_basis.ipynb): Practical applications of basis changes in ML.

## 02 — Matrices (Part 1)
- [01_Matrices_and_vectors.ipynb](02_matrices_01/01_Matrices_and_vectors.ipynb): From linear equations to geometric/algebraic structure.
- [02_how_matrices_transform_space.ipynb](02_matrices_01/02_how_matrices_transform_space.ipynb): Matrices as space transformers — intuition and use cases.
- [03_Types_of_matrix_transformation.ipynb](02_matrices_01/03_Types_of_matrix_transformation.ipynb): Core 2D linear transformations and geometric effects.
- [04_Matrix_Transformation_Composition.ipynb](02_matrices_01/04_Matrix_Transformation_Composition.ipynb): Combining transformations and why order matters.
- [05_Gaussian_Elimination_Apples_Bananas_Carrots.ipynb](02_matrices_01/05_Gaussian_Elimination_Apples_Bananas_Carrots.ipynb): Solve linear systems with Gaussian elimination.
- [06_Inverse_Matrix_Gaussian_Elimination.ipynb](02_matrices_01/06_Inverse_Matrix_Gaussian_Elimination.ipynb): Matrix inversion via elimination — the “undo” view.
- [07_Determinants_and_Inverses.ipynb](02_matrices_01/07_Determinants_and_Inverses.ipynb): Determinant as area/volume scaling; link to invertibility.
- [08_Summary_of_concepts.ipynb](02_matrices_01/08_Summary_of_concepts.ipynb): The matrix story — recap from vectors to transformations.
- [09_example_PCA.ipynb](02_matrices_01/09_example_PCA.ipynb): PCA as finding directions of maximum variance.

## 02 — Matrices (Part 2)
- [01_Einstein_Summation_and_Dot_Product.ipynb](02_matrices_02/01_Einstein_Summation_and_Dot_Product.ipynb): Einstein notation demystified; connects dot/matmul/projections.
- [01b_shadow_projection_quiz.ipynb](02_matrices_02/01b_shadow_projection_quiz.ipynb): 2D shadows of 3D points — derive projection, Einstein notation, build matrix, compute examples.
- [02_Matrices_Changing_Basis.ipynb](02_matrices_02/02_Matrices_Changing_Basis.ipynb): Coordinate descriptions across bases and how to convert.
- [02_shadow_projection_quiz.ipynb](02_matrices_02/02_shadow_projection_quiz.ipynb): Shadow projection quiz (note: file content could not be parsed; consider re‑saving the notebook).
- [03_Transform_in_Changed_Basis.ipynb](02_matrices_02/03_Transform_in_Changed_Basis.ipynb): Apply the same transform under different coordinate systems.
- [03b_example_change_of_basis.ipynb](02_matrices_02/03b_example_change_of_basis.ipynb): PCA as change of basis with similarity transforms.
- [04_Orthogonal_Matrices_Educational.ipynb](02_matrices_02/04_Orthogonal_Matrices_Educational.ipynb): Orthogonal transforms that preserve distances and angles.
- [05_Gram_Schmidt_Educational.ipynb](02_matrices_02/05_Gram_Schmidt_Educational.ipynb): Gram–Schmidt: build orthonormal bases; intuition to QR factorization.

---

If you want, I can add thumbnails, execution badges, or a Binder/Colab launch button for easy viewing.
