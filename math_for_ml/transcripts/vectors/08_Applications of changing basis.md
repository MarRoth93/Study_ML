For example, say I have a bunch of 2D data points like this. Say they all, more or less, lie on a straight line. We can we can see that, these guys all more or less
lie on a line that's going to be something like that. I could imagine rediscovering
that data by mapping them onto that line and then saying how far
they're along that line. So I can map this guy down
onto the line and I could say the origin maps down there and I could then say this data point is that far along the line. So he's that fall on the line and he's this
far away from the line. So I've got two dimensions here. How far I am along the line and how far I am from the line. These guys they're all slightly different distances
from the line. As a little bit of
an argument in stats as to whether we do
the distance that way vertically or that way as a projection for
the distance from the line. But it's a theoretical argument, but notice that this distance
from the line is effectively a measure of
how noisy this data cloud is. If they are all tight on the line they'd all be
very small distances away and if they were all quite spread they'd be
quite big distances away. So this distance from
the line this is effect of the noise and that's information that isn't
very useful to us. So we might want to collapse it. Except that that noise dimension tells me how good
this line fit is. If the best fit line
was all skewed, was all wrong I'd get a much bigger numbers
for the noisiness, and if the best fit line was
as good as possible I get the minimum possible number
for the noisiness. So that noise dimension contains information that's going to
tell me how good my fit is. So when I'm doing
data science it tells me how good my fit to my data is. The way I've defined these two directions along the line and away from the line, they are orthogonal
to each other. So I can use the dot-product
to do the projection to map the data from the x-y space unto
the space of the line, along the line and
away from the line, which is what we deal into
in the last little segment. Now if we're thinking
about a neural network in machine learning that
recognizes faces say, maybe I'd want to make
some transformation of all the pixels interface into a new basis that
describes the nose shape, the skin hue, the distance between the eyes those sorts of things and discard
the actual pixel data. So the goal of the
learning process of the neural network is going
to be to somehow derive a set of basis vectors that extract the most information-rich
features of the faces. So in this video
we've talked about the dimensionality of
a vector space in terms of the number of independent
basis vectors that it has and we found a test
for independence that the set of vectors
are independent if one of them are linear
combination of the others. We've talked more
importantly about what that means in terms of mapping
from one space to another and how that is going to be useful in data science
and machine learning.,