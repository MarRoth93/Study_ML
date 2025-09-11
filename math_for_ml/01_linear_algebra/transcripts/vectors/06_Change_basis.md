Now, so far, we haven't really talked about the coordinate
system of our vector space, the coordinates in which
all our vectors exist. But it turns out that in doing
this thing of projecting, of taking the dot-product, we're projecting our
vector onto one. Which we might use as part of a new definition
of the coordinate system. So in this video, we'll look at what we mean by
a coordinate system, and then we'll do
a few case of changing from one coordinate system to another. So remember that a vector
like this guy r here is just an object that takes us from the origin into
some point in space. Which could be
some physical space or could be some space of data, like bedrooms, and
thousands of years for the house, or
something like that. What we haven't talked
about so far really, is the coordinate system that
we use to describe space. So we could use a coordinate system defined by these two vectors here. I'm
going to give them names. We call them i and j before, I'm going to give names e1 and e2 and found to be
of unit length. So I'm going to give
them a little hat meaning they have unit length. I'm going to define them
to be the vectors one, zero and zero one. If I have more
dimensions in my space, I could have e3 hat, e4 hat, e5 hat, e million hat, whatever. Here the instruction then
is that r is going to be equal to doing a vector
sum of two e1s or three e1s, and then some number of e2s. So we'll call it during
3 e1s hats plus 4 e2 hats, and some will write it down
as a little list, three four. So always, the three four, here's the instruction to do
3 e1 hats plus 4 e2 hats. But if you think about
it, my choice of e1 hat and e2 hat is arbitrary. It depends entirely on the way I set up
the coordinate system. There's no reason I
couldn't have set up some quota system, at
some angle to that. Or even use vectors
to find the axis that weren't even at
90 degrees to each other, were of different lengths. I could still have described
r as being some sum of some vectors I used
to define the space. So I could have
another set of vectors b, I'll call b1 here in
the vector two one, and I could have
another vector here b2 as the vector minus two four, and I've defined it in
terms of the coordinates e. I can then describe
r in terms of, your using those
vectors b1 and b2, is just the numbers in
r would be different. So we call the vectors we
use to define the space, these guys e or these guys b, we call them basis vectors. So the numbers I've
used to define r, only have any meaning when I know about the basis vectors. So r refer to these
basis vectors e is three four, but r referred to the basis
vectors b also exists. We start out with
the numbers earlier. So this should be amazing, the vector r has some existence in a deep mathematical sets, completely independently
of the coordinate system we use to describe
the numbers in the list, describing r. All the vector that takes us from there
from the origin to that, still exist, independently of the numbers we used
in r. This is neat. Right. So the fundamentally idea. Now, if the new
basis vectors, these guys b, are at 90 degrees to each other, then it turns out
that projection products has a nice application. We can use the projection
or dot-product to find out the numbers for r
in the new basis b, so long as we know
what the bs are in terms of e. So here I've
described b1 as being two one, as being e1 plus e2, twice e1 plus e2. I've described b2 as being
minus two e1s plus four e2s. If I know b in terms of e, I'm going to be able to do, use the projection product to find r described in
terms of the bs. But this is a big if, the b1 and b2 have to be at
90 degrees to each other. If they're not we end up
being in big trouble and need matrices to do what's called a transformation
of axis from the e to the b based
on basis vectors. We'll look at matrices later, but this will help us
out a lot for now. Using dot-products in
this special case where the new basis vectors are
orthogonal to each other, is computation a lot
faster and easier, it's just less generic. But if you can
arrange the new axis to be orthogonal, you should, because it makes
the calculations much faster and easier to do. So you can see that if I
project r down onto b1, so I look down from here, and project down at 90 degrees, I get a length here
for scalar product, and that's scalar projection
is the shadow of r to b1. A number of the scalar
projection describes how much of this factor I need. The vector projection is going to actually give me a vector
in the direction of b1, of length equal to
that projection. Now, if I take the
vector projection of r onto b2 going this way, I'm going to get a vector
in the direction of b2 of length equal
to that projection. If I do a vector sum of
that vector projection, plus this guy's
vector projection, I'll just get r. So if I can do those two
vector projections, and add that their vector sum, I'll then have our b being the numbers in
those two vector projections. So I found how to get from r in the e set of basis vectors, to the b set of basis vectors. Now, how do I check that these two new basis vectors are at 90 degrees to each other? I just take the dot-product. So we said before
the dot-product cos Theta was equal to the dot of
two vectors together, so b1 and b2, divided by their lengths. So if b1.b2 is zero, then cos Theta zero, if they're at 90 degrees to each other, they are orthogonal. So I don't even need
calculate length. So I'll just calculate
the dot-product. So b1.b2 here, I take
two times minus two, and I add it to one times four, which is minus four plus
four which is zero. So these two vectors are at
90 degrees to each other. So it's going to be safe
to do the projection. So having thought through it, let's now do it numerically. So if I want to know what r
described in the basis e, and I'll use pink to write. If I take r in the basis e, and I'm going to dot him with b1. The vector projection divides by the length of b1 squared. So r in e dotted with b1 is
going to be three times two, plus four times one, divided by the length
of b1 squared. So that's the sum of the squares
of the components of b, that's two squared
plus one squared. So that gives me,
six plus four is 10, divided by five which is two. So this projection here is
of length two times b1. So that projection there, that vector is going
to be two times b1. So that is, in terms
of the original set of vectors b, original vectors e, re.b1 over b1 squared, times b1 is two times
the vector two one, is the vector four two. I can do, then now
this projection onto e2. So I can do re dotted
with b2 I divided by b. The length of b2 squared, and re.b2 is three
times minus two, plus four times four, divided by the length
of b2 squared, which is minus two squared
plus four squared. So that's, three times
minus two is minus six, plus four times four is 16. So that's a minus
six plus 16 is 10, divided by this length here is, four squared is 16, two
squared is four so 20. So that's equal to a half. So this vector projection
here is that guy times b2. So that's re.b2 over
the modulus of b2 squared, that's my half,
times the vector b2. So that's a half, times the vector b2, which is minus two four. Now, if I add those two together, four two, this bit, that vector projection, plus
this vector projection. So this guy is going
to be a half b2, plus half minus two four
is minus one two. If I add those together, I've got three four, which is just my original
vector r three four in the basis e. So in
the basis of b1 and b2, rb is going to be two a half. Very nice. Two a half. So actually in the basis
b it's going to be two a half there. So rb is 2 times b1 plus a
half times b2. Very nice. So I've converted
from the e set of basis vectors to the b set of basis vectors,
which is very neat. Just using a couple
of dot-products. So this is really handy,
this is really cool. We've seen that a vector
describing our data, isn't tied to the axes that we originally used to
describe it at all. We can re-describe it
using some other axis, some other basis vectors. So the basis vectors were use to describe the space of data, and choosing them carefully
to help us solve a problem will be a very important thing in any algebra, and in general. What we've seen is we can move
the numbers in the vector, we use to describe a data item
from one basis to another. We can do that change just by taking the dots or
projection product, in the case where the new basis vectors are
orthogonal to each other.