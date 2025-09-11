# Solving the Apples and Bananas Problem: Gaussian Elimination

We're finally going to solve the apples and bananas problem. Along the way, we'll learn about the inverse of a matrix and a method for finding it.

## The Problem and the Inverse Matrix

Recall the problem:
*   2 apples + 3 bananas = 8 euros
*   10 apples + 1 banana = 13 euros

In matrix form, `A * r = s`:

<pre class="language-text"><code class="language-text">| 2  3 | | a | = | 8  |
| 10 1 | | b |   | 13 |
</code></pre>

We want to find the vector `r = [a, b]`. If we could find a matrix, let's call it `A_inverse` (or `A⁻¹`), that "undoes" the effect of `A`, we could solve the problem. This inverse matrix has the property that:

`A⁻¹ * A = I` (the identity matrix)

If we multiply both sides of our original equation on the left by `A⁻¹`:

`A⁻¹ * (A * r) = A⁻¹ * s`
`(A⁻¹ * A) * r = A⁻¹ * s`
`I * r = A⁻¹ * s`
`r = A⁻¹ * s`

So, if we can find the inverse of `A`, we can directly calculate our price vector `r`.

## Solving Without the Inverse: Gaussian Elimination

We don't actually need to find the full inverse to solve this specific problem. We can use a method called **Gaussian elimination**, which involves manipulating the equations (or the rows of our matrix) to make them easier to solve.

The goal is to transform our matrix `A` into an **upper triangular** or **row echelon** form, where all the elements below the main diagonal are zero.

Let's write our system as an **augmented matrix**, which combines matrix `A` and vector `s`:

<pre class="language-text"><code class="language-text">[ 2  3 | 8 ]
[ 10 1 | 13 ]
</code></pre>

We can perform three types of **elementary row operations**:
1.  Swap two rows.
2.  Multiply a row by a non-zero number.
3.  Add a multiple of one row to another row.

**Step 1: Create a zero in the bottom-left corner.**
We want to eliminate the `10`. We can do this by subtracting 5 times the first row from the second row (`R2 -> R2 - 5*R1`).

*   `10 - 5*2 = 0`
*   `1 - 5*3 = 1 - 15 = -14`
*   `13 - 5*8 = 13 - 40 = -27`

The new augmented matrix is:
<pre class="language-text"><code class="language-text">[ 2   3 | 8  ]
[ 0 -14 | -27 ]
</code></pre>

**Step 2: Back Substitution**
The second row now represents the equation `0*a - 14*b = -27`, or `-14b = -27`.
We can easily solve for `b`:
`b = -27 / -14 = 27 / 14 ≈ 1.93`

Now substitute this value of `b` back into the first equation (`2a + 3b = 8`):
`2a + 3 * (27/14) = 8`
`2a + 81/14 = 8`
`2a = 8 - 81/14 = 112/14 - 81/14 = 31/14`
`a = 31 / 28 ≈ 1.11`

So, an apple costs approximately 1.11 euros, and a banana costs approximately 1.93 euros. We have solved the problem using Gaussian elimination. This process of row reduction is also known as finding the **row echelon form**.
