# Composition of Matrix Transformations

## The Power of Combining Transformations

What's the point of learning about these different geometric transformations? Any complex shape alteration, like modifying the pixels in an image, can be achieved by combining a sequence of simpler transformations like rotations, shears, and stretches.

If we first apply a transformation `A1` to a vector `r`, and then apply another transformation `A2` to the result, we are performing a **composition** of the two transformations. This is written as `A2 * A1 * r`. The transformation `A1` is applied first, followed by `A2`.

## A Concrete Example

Let's start with our standard basis vectors: `e1 = [1, 0]` and `e2 = [0, 1]`.

**Transformation 1: `A1` (90-degree clockwise rotation)**
*This is different from the video's anticlockwise to match the resulting matrix.*
*   `e1` rotates to `e1_prime = [0, -1]`.
*   `e2` rotates to `e2_prime = [1, 0]`.

So, the matrix `A1` is:
<pre class="language-text"><code class="language-text">A1 = | 0  1 |
     | -1 0 |
</code></pre>

**Transformation 2: `A2` (Reflection across the y-axis)**
*   `e1` reflects to `[-1, 0]`.
*   `e2` stays at `[0, 1]`.

So, the matrix `A2` is:
<pre class="language-text"><code class="language-text">A2 = | -1  0 |
     |  0  1 |
</code></pre>

## Applying the Composition: A2 after A1

Now, let's apply `A2` to the *result* of `A1`. We transform `e1_prime` and `e2_prime` using `A2`.

*   Transform `e1_prime = [0, -1]`: `A2 * e1_prime = [-1, 0] * [0, -1]^T = [0, -1]`. Let's call this `e1_double_prime`.
*   Transform `e2_prime = [1, 0]`: `A2 * e2_prime = [-1, 0] * [1, 0]^T = [-1, 0]`. Let's call this `e2_double_prime`.

The combined transformation matrix, `A_total = A2 * A1`, is formed by these new basis vectors:
<pre class="language-text"><code class="language-text">A_total = | 0  -1 |
          | -1  0 |
</code></pre>

## Matrix Multiplication as Composition

We can find this combined matrix by directly multiplying the matrices `A2` and `A1`:

<pre class="language-text"><code class="language-text">A2 * A1 = | -1  0 | * | 0  1 | = | (-1*0 + 0*-1)  (-1*1 + 0*0) | = | 0  -1 |
          |  0  1 |   | -1 0 |   | (0*0 + 1*-1)   (0*1 + 1*0)  |   | -1  0 |
</code></pre>

The result is the same. Matrix multiplication is the computational shortcut for applying sequential transformations.

## Order Matters: Matrix Multiplication is Not Commutative

What if we apply the transformations in the opposite order: `A1` after `A2`?

<pre class="language-text"><code class="language-text">A1 * A2 = | 0  1 | * | -1  0 | = | (0*-1 + 1*0)  (0*0 + 1*1) | = | 0  1 |
          | -1 0 |   |  0  1 |   | (-1*-1 + 0*0) (-1*0 + 0*1) |   | 1  0 |
</code></pre>

The resulting matrix `A1 * A2` is different from `A2 * A1`.

`A2 * A1 != A1 * A2`

This demonstrates a critical property: **matrix multiplication is not commutative**. The order in which you apply transformations matters.

However, matrix multiplication is **associative**. For three matrices A, B, and C:
`(A * B) * C = A * (B * C)`
You can group the multiplications as you like, as long as you don't change the order.

## Conclusion

The key to solving simultaneous equation problems is understanding how vectors are transformed by matrices, which is the heart of linear algebra. The composition of these transformations, represented by matrix multiplication, is a fundamental tool in this process.
