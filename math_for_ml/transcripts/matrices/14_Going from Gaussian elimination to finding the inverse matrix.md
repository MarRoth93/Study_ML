# From Gaussian Elimination to Finding the Inverse Matrix

We can extend the idea of Gaussian elimination to find the full inverse of a matrix. This provides a general solution that can be used with any vector on the right-hand side.

## The General Problem

Let's say we have a 3x3 matrix `A` and we want to find its inverse, which we'll call `B`.
`A * B = I`

Where `I` is the 3x3 identity matrix.

<pre class="language-text"><code class="language-text">| a11 a12 a13 |   | b11 b12 b13 |   | 1 0 0 |
| a21 a22 a23 | * | b21 b22 b23 | = | 0 1 0 |
| a31 a32 a33 |   | b31 b32 b33 |   | 0 0 1 |
</code></pre>

This single matrix equation is actually three separate systems of linear equations.

1.  `A * [b11, b21, b31]^T = [1, 0, 0]^T`
2.  `A * [b12, b22, b32]^T = [0, 1, 0]^T`
3.  `A * [b13, b23, b33]^T = [0, 0, 1]^T`

The first equation solves for the first column of the inverse matrix `B`. The second equation solves for the second column, and so on.

We could solve each of these systems separately using the Gaussian elimination and back-substitution method we learned before. However, since the row operations only depend on the matrix `A`, we can solve all three systems at the same time.

## The Gauss-Jordan Elimination Method

This method, called **Gauss-Jordan elimination**, works as follows:

1.  Create an augmented matrix by placing the matrix `A` on the left and the identity matrix `I` on the right: `[ A | I ]`.
2.  Use elementary row operations to transform the left side (`A`) into the identity matrix (`I`).
3.  The right side of the augmented matrix will then be transformed into the inverse matrix, `A⁻¹`.

The final form will be `[ I | A⁻¹ ]`.

## Example

Let's find the inverse of the matrix `A` from the previous example:
<pre class="language-text"><code class="language-text">A = | 1 1 3 |
    | 1 2 4 |
    | 1 1 2 |
</code></pre>

**Step 1: Set up the augmented matrix.**
<pre class="language-text"><code class="language-text">[ 1 1 3 | 1 0 0 ]
[ 1 2 4 | 0 1 0 ]
[ 1 1 2 | 0 0 1 ]
</code></pre>

**Step 2: Perform row operations to get `I` on the left.**

*   `R2 -> R2 - R1`
*   `R3 -> R3 - R1`
    <pre class="language-text"><code class="language-text">[ 1 1  3 |  1  0  0 ]
[ 0 1  1 | -1  1  0 ]
[ 0 0 -1 | -1  0  1 ]
</code></pre>

This is **row echelon form**. To get the inverse, we continue to create zeros *above* the diagonal.

*   `R3 -> -1 * R3`
    <pre class="language-text"><code class="language-text">[ 1 1 3 |  1  0  0 ]
[ 0 1 1 | -1  1  0 ]
[ 0 0 1 |  1  0 -1 ]
</code></pre>

*   `R1 -> R1 - 3*R3`
*   `R2 -> R2 - R3`
    <pre class="language-text"><code class="language-text">[ 1 1 0 | -2  0  3 ]
[ 0 1 0 | -2  1  1 ]
[ 0 0 1 |  1  0 -1 ]
</code></pre>

*   `R1 -> R1 - R2`
    <pre class="language-text"><code class="language-text">[ 1 0 0 |  0 -1  2 ]
[ 0 1 0 | -2  1  1 ]
[ 0 0 1 |  1  0 -1 ]
</code></pre>

**Step 3: The result.**
We now have the identity matrix on the left. The matrix on the right is the inverse of `A`.

<pre class="language-text"><code class="language-text">A⁻¹ = |  0 -1  2 |
      | -2  1  1 |
      |  1  0 -1 |
</code></pre>

This method of transforming `[A|I]` to `[I|A⁻¹]` is a general and powerful way to find the inverse of a matrix.
