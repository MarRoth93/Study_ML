# How Matrices Transform Space

## Introduction

Previously, we introduced the idea of a matrix and related it to the problem of solving simultaneous equations. We showed that the columns of a matrix tell us what it does to the unit vector along each axis. Now, we'll look at different types of matrices, what they do to space, and what happens when we apply one matrix transformation after another (a process called composition).

## The Linearity of Matrix Transformations

Because any vector can be constructed from a scaled vector sum of the basis vectors `e1_hat` and `e2_hat`, the result of a matrix transformation is simply a sum of the transformed basis vectors. This means that the grid lines of our space remain parallel and evenly spaced. They might be stretched or sheared, but the origin stays fixed, and the space doesn't get warped or curved. This is a direct consequence of the scalar addition and multiplication rules for vectors.

If we represent a matrix as `A` and the vector it transforms as `r` (like our `(a, b)` vector in the apples and bananas problem), the transformation gives us a new vector, `r_prime`.

`A * r = r_prime`

This transformation follows two key properties of linearity:

1.  **Scalar Multiplication:** `A * (n * r) = n * (A * r) = n * r_prime`
    If you scale the input vector by a number `n`, the output vector is scaled by the same number.

2.  **Vector Addition:** `A * (r + s) = A * r + A * s`
    The transformation of a sum of vectors is the sum of their individual transformations.

Combining these, if a vector `v` is a linear combination of basis vectors, `v = n*e1_hat + m*e2_hat`, then its transformation is:

`A * v = n * (A * e1_hat) + m * (A * e2_hat) = n * e1_prime + m * e2_prime`

The transformed vector is just a linear combination of the transformed basis vectors.

## Example of a Transformation

Let's use the matrix from our apples and bananas problem:

<pre class="language-text"><code class="language-text">A = | 2  3 |
    | 10 1 |
</code></pre>

This means the transformed basis vectors are `e1_prime = [2, 10]` and `e2_prime = [3, 1]`.

Let's transform the vector `v = [3, 2]`.

**Method 1: Direct Multiplication**

<pre class="language-text"><code class="language-text">| 2  3 | | 3 | = | (2*3 + 3*2) | = | 12 |
| 10 1 | | 2 |   | (10*3 + 1*2)|   | 32 |
</code></pre>

**Method 2: Using Transformed Basis Vectors**

The vector `v = [3, 2]` can be written as `3 * e1_hat + 2 * e2_hat`.
The transformed vector will be `3 * e1_prime + 2 * e2_prime`.

`3 * [2, 10] + 2 * [3, 1] = [6, 30] + [6, 2] = [12, 32]`

Both methods yield the same result. This confirms that a matrix transformation is fundamentally about where the basis vectors land. We don't need to focus on the mechanics of multiplication; we can think in terms of how the space itself is altered.

**Exercise:** Pause for a moment and try this with an example of your own. Verify that this property holds. It's a deep and fundamental concept.
