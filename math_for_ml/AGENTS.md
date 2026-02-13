# Repository Guidelines

## Project Structure & Module Organization
This repository is a study workspace built around Jupyter notebooks.
Core content lives in `01_linear_algebra/` and `02_multivariate_calculus/`,
with topic folders containing `.ipynb` notebooks and supporting transcripts.
Reference materials are in `additional_resources/`. Project process
documentation lives under `conductor/` (workflow, tech stack, style guide).

## Build, Test, and Development Commands
- `jupyter lab` or `jupyter notebook` starts the interactive environment.
- There is no build step; notebooks are the primary runtime artifact.
- Ensure your environment has Python, Jupyter, NumPy, and Matplotlib installed
  (for example: `pip install jupyter numpy matplotlib`).

## Coding Style & Naming Conventions
Follow `conductor/code_styleguides/python.md` (Google Python Style Guide):
4-space indentation, 80-char lines, `snake_case` for functions/variables,
`PascalCase` for classes, `ALL_CAPS_WITH_UNDERSCORES` for constants.
Use docstrings with `Args:`, `Returns:`, and `Raises:` for public APIs, avoid
mutable default arguments, and prefer type annotations.

## Testing Guidelines
There is no test suite in the repo yet. If you add Python modules, follow the
TDD workflow in `conductor/workflow.md` and aim for >80% coverage. Default to
`tests/` with `test_*.py` naming and run tests with `pytest` plus coverage
(`pytest --cov=.`) once you add those tools.

## Commit & Pull Request Guidelines
Git history shows short, informal messages (e.g., "new notebooks", "update")
without a strict convention. The workflow recommends Conventional Commits:
`<type>(<scope>): <description>` (e.g., `docs(notebooks): Add PCA notes`).
If you follow Conductor, attach git notes with task summaries and update
`plan.md` after each task. For PRs, include a clear description, list affected
notebooks/paths, and note any new dependencies or setup steps.

## Workflow Notes
`conductor/workflow.md` is the source of truth for task flow, coverage goals,
and quality gates. If you adopt that workflow, add a `plan.md` at the repo
root (or under `conductor/`) to track tasks and phases.
