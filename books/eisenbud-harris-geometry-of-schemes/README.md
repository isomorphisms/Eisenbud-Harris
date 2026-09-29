# The Geometry of Schemes

**David Eisenbud and Joe Harris. Graduate Texts in Mathematics 197, Springer, 2000.**

Publisher/DOI: https://doi.org/10.1007/b97680

## Role in this repository

This book supplies the geometric language that the commutative-algebra spine is aiming at. Read it in both directions:

- ring, ideal, localization, module, and graded-module constructions → geometric objects;
- geometric statements about points, components, tangent directions, families, and parameter spaces → the algebra that records information a point-set picture loses.

The main companion is [`../eisenbud-commutative-algebra/`](../eisenbud-commutative-algebra/). Fulton becomes increasingly important around intersection multiplicity, Hilbert polynomials, degeneracy phenomena, and enumerative geometry; keep that bridge explicit through [`../../notes/fulton-intersection-theory-bridge.md`](../../notes/fulton-intersection-theory-bridge.md).

Concrete equations and low-dimensional geometric shadows should link to the SURFER catalog rather than being redrawn by hand:
[`../computations-with-macaulay2/varieties/`](../computations-with-macaulay2/varieties/).

## Reading map

The book has six mathematical chapters after the introduction. Notes here follow that structure without copying the text.

1. [Basic definitions](notes/01-basic-definitions.md) — affine schemes, structure sheaves, general schemes, relative schemes, and the functor of points.
2. [Examples and nonreduced geometry](notes/02-examples-and-nonreduced-geometry.md) — reduced and nonreduced examples, embedded structure, multiplicity, flat families, and arithmetic schemes.
3. [Projective schemes](notes/03-projective-schemes.md) — Proj, projective morphisms, tangent spaces and cones, Grassmannians, Hilbert functions and polynomials, resolutions, and intersection calculations.
4. [Classical constructions](notes/04-classical-constructions.md) — flexes, blow-ups, Fano schemes, and degenerations.
5. [Local constructions](notes/05-local-constructions.md) — images, Fitting ideals, resultants, discriminants, singular schemes, dual curves, and double-point loci.
6. [Schemes and functors](notes/06-schemes-and-functors.md) — representable functors, group schemes, parameter spaces, Hilbert schemes, tangent spaces, and moduli.

Two synthesis files cut across chapter order:

- [Algebra ↔ geometry dictionary](notes/07-algebra-geometry-dictionary.md)
- [Computation and visualization hooks](notes/08-computation-and-visualization.md)

Start with [the reading map](notes/00-reading-map.md).

## Working rule

A scheme is not a picture of its points. When a note uses a render, say exactly which geometric shadow is shown: reduced support, a real locus, a chosen affine chart, a slice or projection, a tangent cone, a singular locus, an intersection support, or a member of a family. Nilpotents, embedded components, multiplicity, residue-field information, and functorial behavior need algebraic records beside the image.

## Source discipline

Keep source records first and synthesis second. Do not mirror the copyrighted book. Record page/section references when checked against an authorized copy, but prefer stable section names when pagination varies by edition or viewer.

See [`AGENTS.md`](AGENTS.md) for the contract agents must obey.
