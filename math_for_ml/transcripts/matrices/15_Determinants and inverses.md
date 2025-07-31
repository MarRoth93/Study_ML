# Determinants and Inverses

In this final section, we'll explore a property of a matrix called the **determinant** and see what happens when a matrix doesn't have linearly independent basis vectors.

## The Determinant as a Scaling Factor of Space

Let's start with a simple diagonal matrix:
<pre class="language-text"><code class="language-text">A = | a  0 |
    | 0  d |
</code></pre>

This matrix scales the basis vectors:
*   `e1_hat = [1, 0]` goes to `[a, 0]`.
*   `e2_hat = [0, 1]` goes to `[0, d]`.

The original unit square, with an area of 1, is transformed into a rectangle with width `a` and height `d`. The area of this new rectangle is `a * d`. This scaling factor, which represents how much the area of the space has changed, is the **determinant** of the matrix.

`det(A) = ad`

Even for a more general matrix that creates a parallelogram, like:
<pre class="language-text"><code class="language-text">B = | a  b |
    | 0  d |
</code></pre>
The area of the resulting parallelogram is still base (`a`) times perpendicular height (`d`), so the determinant is `ad`.

For a general 2x2 matrix:
<pre class="language-text"><code class="language-text">M = | a  b |
    | c  d |
</code></pre>
The area of the parallelogram formed by the transformed basis vectors is `ad - bc`.
We denote the determinant with vertical bars:
<pre class="language-text"><code class="language-text">det(M) = | a  b | = ad - bc
         | c  d |
</code></pre>

## The Determinant and the Inverse

You may have learned a formula for the inverse of a 2x2 matrix in school:
<pre class="language-text"><code class="language-text">M⁻¹ = (1 / (ad - bc)) * | d  -b |
                       | -c  a |
</code></pre>

Notice that the term `ad - bc` is the determinant. The inverse is found by swapping the diagonal elements, negating the off-diagonal elements, and then dividing the entire matrix by the determinant.

Why? The matrix `| d -b; -c a |` is called the **adjugate** or **adjunct** matrix. Multiplying `M` by its adjugate gives:
<pre class="language-text"><code class="language-text">M * adj(M) = | a  b | * | d  -b | = | (ad-bc)   0   | = det(M) * I
             | c  d |   | -c  a |   |    0    (ad-bc)|
</code></pre>

To get the identity matrix `I`, we clearly need to divide by `det(M)`. This shows that the inverse `M⁻¹` is `(1/det(M)) * adj(M)`.

## When the Determinant is Zero

What happens if the determinant is zero?
`det(A) = 0`

This means that the scaling factor of the area (or volume in 3D) is zero. This occurs when the matrix collapses the space into a lower dimension.

For example, consider the matrix:
<pre class="language-text"><code class="language-text">A = | 1  2 |
    | 1  2 |
</code></pre>

*   `e1_hat = [1, 0]` is transformed to `[1, 1]`.
*   `e2_hat = [0, 1]` is transformed to `[2, 2]`.

Both transformed basis vectors lie on the same line (`y=x`). They are not linearly independent; one is just a multiple of the other. The entire 2D space is squashed onto a single line. The "area" of this line is zero, so the determinant is zero:
`det(A) = (1 * 2) - (2 * 1) = 0`

## Zero Determinant and Invertibility

If `det(A) = 0`, we cannot find an inverse for matrix `A`.
1.  **The Formula Fails:** The formula for the inverse requires dividing by the determinant. Division by zero is undefined.
2.  **The Transformation is Irreversible:** If a matrix collapses a 2D space into a 1D line, you lose information. There's no way to "un-collapse" the line and restore the original 2D vectors. The transformation cannot be undone, so no inverse exists.

This is also true for systems of linear equations. If the matrix of coefficients has a determinant of zero, it means the equations are not independent (one is a combination of the others). You don't have enough unique information to find a single solution, and the system cannot be solved.

## Conclusion

In this module, we have:
*   Defined a matrix as a transformation of space.
*   Looked at types of transformations (rotations, shears, etc.) and how to combine them.
*   Learned to solve systems of linear equations using Gaussian elimination.
*   Found a general method to compute the inverse of a matrix.
*   Explored the determinant as a scaling factor and its connection to linear independence and invertibility.

In the next module, we will look at eigenvectors: special vectors that are unchanged in direction by a matrix transformation. They are critically important in machine learning.
