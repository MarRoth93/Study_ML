# Modulus & inner product

So we've looked at
the two main vector operations of addition and
scaling by a number. Those are all the things we
really need to be able to do to define what we
mean by a vector, the mathematical properties
that a vector has. Now, we can move on
to define two things; the length of a vector, also called its size, and the dot product of a vector, also called it's inner scalar
or projection product. The dot product is this huge and amazing concept in
linear algebra, with huge numbers
of implications. I will only be able to touch on a few parts here, but enjoy. It's one of the most beautiful
parts of linear algebra. So when we define
a vector, initially, say this guy r here, we did it without reference
to any coordinate system. In fact, the geometric
object, this thing r, just has two properties, its length and its direction
that it's pointing that way. So irrespective of
the coordinate system we decided to use, we want to know how to calculate these two properties of
length and direction. If the coordinate system
was constructed out of two unit vectors that are
orthogonal to each other, like i here and j here in 2D, then we can say that r
is equal to a times i, plus b times j. When I say unit about i and j, I mean that of length one, which people will often
denote by putting a little hat over them like this. Then from Pythagoras,
we can say that the length of r is given
by the hypotenuse. So what I mean by that is, if we draw a little
triangle here, then we've got
this length here is ai. So if we write the length being, with these two little
vertical lines, it's just of length a,
because i is of length one. This side here is bj, and that's of length b. So this side here
is from Pythagoras, is just a squared plus b
squared, all square rooted, and that's the size of r.
So we can write down r, quite often people will do this, write r down like this, just ignoring the i and j and writing it as
a column vector. So r is equal to a-b. The size of r, we
write down as being the square root of
a squared plus b squared. Now, we've done this for
two spatial directions defined by unit vectors i and j that are at right angles
to each other. But this definition of the size of a vector is
more general than that. It doesn't matter if
the different components of the vector or dimensions
in space like here, or even things have different
fiscal units like length, and time, and price. We still define the size
of a vector through the sums of the squares
of its components. The next thing we're
going to do is to find the dot product. One way among several, multiplying if you'd like
two vectors together. If we have two vectors, r and s here, r here has components r_i, r_j, so r in the i direction, r in the j direction, and s has components s_i and s_j, then we define r dotted with s to be given by multiplying
the i components together. So that's r_i times s_i, and adding the j
components together, so that's r_j times s_j. The dot product is just a number, a scalar number, about three, given by multiplying
the components of the vector together in turn, and adding those up. So in this case, that would be three
and two, for the rij, and minus one, and two
for s. So if we do that, then we get a sum, the r.s is equal to
minus three plus four, which gives us one. So r.s in this case,
it's just one. Now, we need to prove some
properties of the dot product. First, it's commutative. What commutative means is
that r.s is equal to s.r. It doesn't matter
which way around we do it. It doesn't matter because when we put
these numbers in here, if we interchange
those, the rs and Ss, we get the same thing when we multiply minus one by three, it's the same as three
times minus one. So, it doesn't matter which way round we
do the dot product. s.r is equal to r.s, which means it's commutative. Second property we want to prove the dot product is
distributive over addition. By which I mean that if I've got a third vector here now t, that r dotted with s plus t
is equal to r dotted with s, plus r dotted with t. I can
multiply it out in that way. It's probably feels
mundane or obvious, but let's prove it
in the general case. So let's say I've got
some n-dimensional vector r, components r_1, r_2,
all the way up to r_n, and s, is the same as
components s_1, s_2, all the way up to s_n, and t has components t_1, t_2, all the way up to t_n. Then let's multiply it out. So if we take the left-hand side, r dotted with s plus t, that's going to be equal
to r_1 times s_1 plus t_1. We take the components. Then r_2, component r_2, times components s_2 plus t_2. Then all the
dimensions in between, and then finally, r-n
times s_n plus t_n. Then what we can do, is we can then sort that out. So we've got multiply that out. So we've got r_1, s_1, plus r_1, t_1, plus r_2, s_2, plus r_2, t_2, plus all the ones in between r_n
and s_n, plus r_n, t_n. Then we can collect it together. So we've got the r_1,
s_1 times r_2, s_2, all the way to r_n, s-n. That's of course, just equal to r dotted with s. If we collect
the r_t terms together, we've got r_1, t with t_1, r_2, t_2, all the ones in
between r_n, t_n. That's just r dotted with t. So we've demonstrated
that this is in fact true, that you can pull out plus
signs and dots in this way, which is called being
distributed over addition. The third thing we're going to look at is what's
called associativity. So that is, if we take
a vector, a dot product, and we've got r dotted
with some multiple of s, where a is just a number, it's just a scalar number. So we're multiplying
s by a scalar. What we're going to say is that, that is equal to a
times r dotted with s. That means that it's associative over
scalar multiplication. We can prove that quite
easily, just in the 2D case. So if we say we've
got r_1 times a s_1 plus r_2 times a s_2, that's the left-hand side, just for a
two-dimensional vector. Then we can pull the a out. So we can take the a out
of both of these, happens then we've got r_1, s_1, plus r_2, s_2. That's just r.s, a times r.s. So this is in fact true. So we've got our three properties that the dot product is commutative. We
can interchange it. Is distributed over addition, which is this expression, and its associative over
scalar multiplication. We can just pull out
scalar numbers out. As an aside, sometimes
you'll see people in physics and engineering
write vectors in bold, numbers or scalars in
normal font or they'll underline their vectors to
easily distinguish them from things
that have scalars. Whereas in math and
computer science, people don't tend to do that. It's just the notation difference between different communities, and it's not anything
fundamental to worry about. The last thing we need to do
before we can move on is, draw out a link between the dot product and the length
or modulus of a vector. If I take a vector and
dot it with itself, so r dotted with r, what I get is just the sums of the squares of its components. So I get r_1 times r_1, plus r_2 times r_2, and all the others if
there were all the others. So I get r-1 squared
plus r_2 squared. Now that's quite
interesting because that means if I take the dot product
of a vector with itself, I get the square of
its size of its modulus. So that equals r_1
plus r_2 squared, square rooted, all squared. So that's mod r squared. So if we want to get
the size of a vector, we can do that just by dotting the vector with itself and
taking the square root. That's really neat and really hopefully,
quite satisfying.
