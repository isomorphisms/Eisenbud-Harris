# II. Examples and nonreduced geometry

This chapter carries much of the conceptual weight of the book. Familiar-looking point sets can support different algebraic structures.

## Reduced versus nonreduced

For `X = Spec A`, nilpotents in `A` encode scheme structure that the underlying topological space cannot detect.

The reduction `X_red = Spec(A / √0)` has the same underlying space as `X` but discards nilpotents.

A visualization normally lands closer to `X_red`—often only its real locus—than to `X`. Every visual note should say that explicitly.

## Double and multiple points

A model such as `Spec k[ε]/(ε²)` has one ordinary point but a nontrivial infinitesimal direction. A point-set image shows a point; the ring shows first-order thickness.

This example should anchor Zariski tangent spaces, infinitesimal deformations, functor-of-points tests using dual numbers, multiplicity, and nontransverse intersections.

## Embedded points and primary decomposition

Primary decomposition separates visible irreducible components from embedded algebraic structure.

Keep the chain explicit:

ideal
→ primary components
→ associated primes
→ minimal versus embedded components
→ geometric interpretation.

Topological support alone can miss an embedded associated prime.

## Degree and multiplicity

Multiplicity measures more than the number of geometric points. Repeated or nontransverse intersections can have small support and larger scheme-theoretic length or degree.

For a zero-dimensional example, vector-space dimension of the coordinate ring over the base field often exposes multiplicity directly.

This is a natural bridge to Fulton: scheme structure is what lets intersection multiplicity remain after set-theoretic information collapses.

## Flat families and limits

Track a family in three parallel forms:

1. equations with a parameter `t`;
2. the total scheme over the parameter base;
3. generic and special fibers.

Compute the special fiber by base change rather than guessing from a visual limit when torsion or flatness matters.

## Multiple structures on subvarieties

A doubled line or thickened component makes the same point: support can remain one line while the structure sheaf carries transverse infinitesimal data.

SURFER can display the support but cannot display nilpotent thickness directly. Keep the defining ideal and quotient ring beside the image.

## Arithmetic schemes

Schemes over `Spec Z` put fibers over different primes in one object. Useful questions for a concrete equation include smoothness, reducibility, factorization after reduction mod `p`, and which invariants remain constant.

## Executable tests

For selected examples, record:

- `I`, `rad I`, and associated primes;
- ring length for zero-dimensional schemes;
- tangent-space dimension;
- generic/special fibers;
- flatness where computationally accessible;
- reduced-support SURFER renders, clearly labeled as such.
