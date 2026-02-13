# Product Guidelines - Math for ML Study Repository

## Content Tone and Style
- **Educational Approach:** We use a **Hybrid** style. Every concept should be introduced with a strong geometric or practical intuition before transitioning into formal mathematical definitions and proofs. This ensures accessibility without sacrificing rigor.
- **Clarity:** Use precise terminology but explain it through analogies relevant to Machine Learning.

## Code Standards
- **Literate Programming:** Python code in notebooks must be extensively documented. Inline comments should explain the mathematical logic behind each line of code, not just the code itself.
- **Visual-First:** Prioritize visualization. Whenever a mathematical operation is performed (e.g., a vector transformation or a gradient calculation), use Matplotlib to provide a visual representation to reinforce the intuition.
- **Library Usage:** Primarily use NumPy for matrix and vector operations to mirror standard ML practices.

## Organization and Resources
- **Structural Consistency:** The repository follows a **Strict Hierarchy** that mirrors the Imperial College London course modules. This makes it easy to map personal progress against the course syllabus.
- **Resource Integration:** Maintain clear separation between original course transcripts, reference textbooks, and personal implementation notebooks while ensuring they are logically grouped within their respective topic folders.

## Mathematical Notation
- **LaTeX Formatting:** All mathematical expressions across notebooks and documentation must be formatted using **LaTeX**.
    - Use `$expression$` for inline math.
    - Use `$$expression$$` for centered block equations to ensure readability and professional presentation.
- **Consistency:** Use consistent variable naming (e.g., lowercase bold for vectors $\mathbf{v}$, uppercase for matrices $A$) as established in the course materials.
