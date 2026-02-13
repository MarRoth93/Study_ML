# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Educational study repository for "Mathematics for Machine Learning" following the Imperial College London specialization. Contains 55+ Jupyter Notebooks covering Linear Algebra and Multivariate Calculus with Python implementations.

## Running Notebooks

```bash
jupyter notebook
# or
jupyter lab
```

## Tech Stack

- **Python** with **Jupyter Notebooks**
- **NumPy** for vector/matrix operations
- **Matplotlib** for visualizations

## Architecture

```
01_linear_algebra/
├── 01_vectors/          # Vector operations, dot products, projections, basis changes
├── 02_matrices_01/      # Matrix-vector multiplication, transformations, Gaussian elimination
├── 02_matrices_02/      # Einstein summation, orthogonal matrices, Gram-Schmidt
├── 03_eigenproblems/    # Eigenvalues, eigenvectors, PageRank
└── transcripts/         # Lecture transcripts (vectors/, matrices/)

02_multivariate_calculus/
├── 01_foundations/      # Functions and derivatives
├── 01_calculus/         # Basic calculus concepts
├── 02_calculus/         # Jacobian, Hessian, multivariate derivatives
├── 03_multivariate_chain_rule/  # Neural networks, backpropagation
└── transcripts/

conductor/               # Project management
├── product.md           # Learning goals and feature definitions
├── tech-stack.md        # Technology decisions
├── workflow.md          # Task management (TDD, git notes workflow)
└── code_styleguides/python.md  # Google Python Style Guide summary
```

## Workflow (Conductor)

This project uses the Conductor workflow defined in `conductor/workflow.md`:

- **plan.md** tracks all tasks (`[ ]` pending, `[~]` in progress, `[x]` done)
- Follow TDD: write failing tests first, then implement
- Target >80% code coverage
- Attach git notes to commits with task summaries
- Update `tech-stack.md` before making technology changes

## Code Style

Follow Google Python Style Guide (`conductor/code_styleguides/python.md`):
- `snake_case` for functions/variables, `PascalCase` for classes
- 80 char line limit, 4-space indentation
- Type annotations encouraged
- Docstrings with `Args:`, `Returns:`, `Raises:` sections

## Notebook Conventions

Each notebook typically includes:
- Markdown cells with LaTeX equations for theory
- Code cells demonstrating concepts with NumPy
- Matplotlib visualizations for geometric intuition
- Practical ML application examples (e.g., PCA, PageRank, neural networks)
