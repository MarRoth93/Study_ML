So we've seen how we
don't just have to have basis vectors that are
our normal one hour and 01, the so-called natural basis. We can have different
basis vectors that we define how we
move about space. In this video, we're going to define what we mean by a basis, by a vector space, and by the term
linear independence, which is going to
let us understand how many dimensions
our vector space possesses. So first, let's define
what we mean by a basis. A basis is a set of n vectors that are not linear
combinations of each other, which means they are
linearly independent of each other and their span, the space they describe. The space is then n dimensional. This first criteria
I can write down by saying that they are
linearly independent. If I can't write any of them down by taking some
combination of the others. So for example, let's say
I've got a vector b_1 here, by taking multiples of b_1, I can get anywhere along
the 1D space of a line. If I take a second vector b_2, that isn't just a
multiple of b_1, then I can get anywhere
in the plane of this board by taking
combinations of b_1 and b_2. Some number of b_1's plus
some number of b_2's, and this is a 2D space. Now, let's take
a third vector b_3. Now, for b_3 to be
a valid third basis vector, it has to be impossible for
me to find some numbers a_1 and a_2 such that I
can satisfy this sub. So it has to be impossible
for me to find b_3 at some combination of b_1's and b_2's where a_1 and
a_2 are just numbers. That has to be impossible, and if it is impossible, b_3 is a third basis vector and b_3 is linearly independent. If it is possible for me to find an a_1 and a_2 that
satisfies that sum, b_3 is then linearly dependent on b_1 and b_2 and it lies in
the same plane as b_1 and b_2, and if it's impossible for
me to find an a_1 and a_2, b_3 must have some component out of the board so I can then use b_3 to give me
a three-dimensional space. So that lets us define
what we mean by the number of linearly independent basis
vectors in our space. If I had a four basis factor b_4 that wasn't a linear
combination of b_1, b_2, and b_3, I'd have a four-dimensional
space and so on up to as many
dimensions as I like. Now, notice what my basis
vectors b don't have to be. They don't have to be unit vectors by
which I mean vectors of length one and they don't
have to be orthogonal, that is at 90 degrees
to each other. But everything is going to
be much easier if they are. So if at all possible, you want to use
orthonormal basis factor sets, 90 degrees of unit length. Now let's think about
what happens when we map from one basis to another. The number line of the axis of the original grid then projects
down onto the new grid and potentially has different
values on that grid but the projection keeps the grid
being evenly spaced. Therefore, any mapping we do from one set of basis vectors, from one coordinate
system to another, keeps the vector space being
a regularly spaced grid. Well, our original
vector rules of vector addition
and multiplication by a scalar still work. It doesn't [inaudible] fold space which is what the linear bit
in linear algebra means. Things might be stretched
or rotated or inverted, but everything remains evenly spaced and linear
combinations still work. Now, where the new basis vectors
aren't orthogonal, then to do the change from
one basis to another, we won't just be able
to use the dot product, we'll need to use matrices instead which will meet
in the next module. So that's the formal
definition of what we mean by a basis and by
linear independence.