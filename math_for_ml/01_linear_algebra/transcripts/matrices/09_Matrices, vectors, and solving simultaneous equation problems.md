# Matrices, Vectors, and Solving Simultaneous Equation Problems

## Introduction: The Apples and Bananas Problem

At the beginning of the course, we were introduced to the "apples and bananas problem": how to determine the individual price of items when we only know the total cost of a purchase. We've explored vectors, and now we'll delve into matrices. Matrices are mathematical objects that can rotate and stretch vectors, but they also provide a powerful tool for solving problems like this.

Let's revisit the apples and bananas scenario:

*   **Scenario 1:** I buy 2 apples and 3 bananas for a total of 8 euros.
*   **Scenario 2:** On another day, I buy 10 apples and 1 banana for 13 euros.

The goal is to find the individual price of one apple and one banana. While this might seem like a simple problem, this kind of "price discovery" is common in business with complex products and service agreements.

## From Simultaneous Equations to Matrices

These two scenarios can be represented as a system of simultaneous equations:

```
2a + 3b = 8
10a + 1b = 13
```

Where `a` is the price of an apple and `b` is the price of a banana.

We can rewrite this system using matrix notation:

<pre class="language-text"><code class="language-text">| 2  3 | | a |   | 8  |
| 10 1 | | b | = | 13 |
</code></pre>

Here's a breakdown of the components:

*   The first object is a **2x2 matrix**: `| 2  3 |`
                                       `| 10 1 |`
*   The second object is a **2x1 matrix** (also a vector): `| a |`
                                                          `| b |`
*   The third object is another **2x1 matrix** (or vector): `| 8  |`
                                                           `| 13 |`

The rule for multiplying this out is to multiply the elements of each row in the first matrix by the elements of the column in the second matrix:

*   **(Row 1) * (Column 1):** `(2 * a) + (3 * b) = 8`
*   **(Row 2) * (Column 1):** `(10 * a) + (1 * b) = 13`

This gives us back our original simultaneous equations. The advantage of the matrix form is that it allows us to think of the problem in terms of vectors. The matrix on the left acts on the vector `(a, b)` to produce the vector `(8, 13)`. The question then becomes: what input vector `(a, b)` is transformed into the output vector `(8, 13)`?

## Matrices as Transformations of Space

Let's see what happens when we multiply our matrix by the standard basis vectors:

*   **Transforming the x-axis basis vector (e1_hat = [1, 0]):**

    <pre class="language-text"><code class="language-text">| 2  3 | | 1 |   | (2*1 + 3*0) |   | 2  |
| 10 1 | | 0 | = | (10*1 + 1*0)| = | 10 |
</code></pre>
    The basis vector `[1, 0]` is transformed to `[2, 10]`.

*   **Transforming the y-axis basis vector (e2_hat = [0, 1]):**

    <pre class="language-text"><code class="language-text">| 2  3 | | 0 |   | (2*0 + 3*1) |   | 3 |
| 10 1 | | 1 | = | (10*0 + 1*1)| = | 1 |
</code></pre>
    The basis vector `[0, 1]` is transformed to `[3, 1]`.

This shows that the matrix `[[2, 3], [10, 1]]` is a function that takes input vectors and produces output vectors. It transforms the space by moving the basis vectors. The problem of solving the simultaneous equations is equivalent to asking what vector we need to start with to get the transformed vector `[8, 13]`.

## The Essence of Linear Algebra

This brings us to the term **linear algebra**:

*   **Linear:** The operations involve taking input values (`a` and `b`) and multiplying them by constants. There are no powers, divisions, or other non-linear operations.
*   **Algebra:** It's a system of notation for describing mathematical objects (like vectors and matrices) and the rules for manipulating them.

In essence, linear algebra is a mathematical system for manipulating vectors within the spaces they describe.

## Conclusion

There is a deep connection between simultaneous equations, matrices, and vectors. The key to solving systems of linear equations lies in understanding how matrices transform vectors. This is the fundamental concept at the heart of linear algebra.
