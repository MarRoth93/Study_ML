# Types of Matrix Transformations

Now, let's look at some special types of matrices that perform simple geometric transformations. We can then combine these to create more complex transformations.

## 1. The Identity Matrix

The identity matrix is a matrix that doesn't change anything. It's composed of the standard basis vectors:

<pre class="language-text"><code class="language-text">I = | 1  0 |
    | 0  1 |
</code></pre>

When you multiply any vector `[x, y]` by the identity matrix, the vector remains unchanged:

<pre class="language-text"><code class="language-text">| 1  0 | | x | = | (1*x + 0*y) | = | x |
| 0  1 | | y |   | (0*x + 1*y) |   | y |
</code></pre>

It's called the **Identity Matrix**, denoted by `I`, because it preserves the identity of every vector.

## 2. Scaling Matrices

What if we have different numbers along the main diagonal?

<pre class="language-text"><code class="language-text">S = | 3  0 |
    | 0  2 |
</code></pre>

This matrix scales the space.
*   The x-axis basis vector `[1, 0]` is transformed to `[3, 0]`.
*   The y-axis basis vector `[0, 1]` is transformed to `[0, 2]`.

The space is scaled by a factor of 3 in the x-direction and a factor of 2 in the y-direction. A unit square becomes a 3x2 rectangle. If the scaling factor is a fraction (e.g., 1/3), the space is compressed in that direction.

## 3. Reflection Matrices

What happens if we use a negative value for scaling?

<pre class="language-text"><code class="language-text">R = | -1  0 |
    |  0  2 |
</code></pre>

*   The x-axis basis vector `[1, 0]` is transformed to `[-1, 0]`.
*   The y-axis basis vector `[0, 1]` is scaled to `[0, 2]`.

The transformation reflects the space across the y-axis and stretches it in the y-direction. The original unit square is flipped and stretched.

## 4. Shear Matrices

A shear transformation slants the space. Consider this matrix:

<pre class="language-text"><code class="language-text">H = | 1  1 |
    | 0  1 |
</code></pre>

*   The x-axis basis vector `[1, 0]` remains `[1, 0]`.
*   The y-axis basis vector `[0, 1]` is transformed to `[1, 1]`.

This transformation leaves the base of the unit square on the x-axis but pushes the top to the right, turning the square into a parallelogram.

## 5. Rotation Matrices

A rotation matrix rotates the space around the origin. To rotate counter-clockwise by an angle `theta`, the matrix is:

<pre class="language-text"><code class="language-text">R(theta) = | cos(theta)  -sin(theta) |
           | sin(theta)   cos(theta) |
</code></pre>

For a 90-degree counter-clockwise rotation (`theta = 90`), `cos(90) = 0` and `sin(90) = 1`:

<pre class="language-text"><code class="language-text">R(90) = | 0  -1 |
        | 1   0 |
</code></pre>

*   `e1_hat = [1, 0]` goes to `[0, 1]`.
*   `e2_hat = [0, 1]` goes to `[-1, 0]`.
