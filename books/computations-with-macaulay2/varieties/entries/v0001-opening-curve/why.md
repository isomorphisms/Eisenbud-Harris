# Why this variety appears

This is the first sustained geometric object in the book's Macaulay2 computations. It turns two explicit polynomial generators into an ideal and then asks computational questions about the object: Gröbner basis, dimension, codimension, degree, saturation, and radicality.

The example makes the algebra/geometry dictionary concrete. The two component equations deserve their own entries because the variety is defined by their simultaneous vanishing, not by multiplying them.

The saturation step is especially important context: the source later replaces the original `curve` by `curve1 = saturate(curve, ideal(x))`. A later catalog pass should give that saturated result its own entry rather than silently treating the name `curve` as one immutable object.
