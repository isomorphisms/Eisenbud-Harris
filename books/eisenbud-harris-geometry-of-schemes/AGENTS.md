# Agent contract: The Geometry of Schemes

## Purpose

Build source-backed notes around Eisenbud–Harris, *The Geometry of Schemes*, with the commutative-algebra construction visible beside the geometric statement.

Do not turn this directory into a generic algebraic-geometry encyclopedia.

## Required behavior

For every substantial note:

1. identify the book chapter/section being synthesized;
2. state the relevant algebraic object or operation;
3. state the geometric information it carries;
4. cross-link the commutative-algebra notes when the algebra has already been developed there;
5. cross-link Fulton when intersection theory becomes the relevant next layer;
6. send concrete renderable equations to the shared polynomial/variety catalog instead of inventing a second catalog.

Do not copy long passages from the book. Notes should be original synthesis.

## Scheme/picture invariant

Never identify a scheme with a rendered point set.

When SURFER or another geometric view is linked, label the realization explicitly: reduced support, real locus, affine chart, slice, projection, tangent cone, singular locus, intersection support, or family member.

A render cannot show nilpotents, embedded associated points, scheme-theoretic multiplicity, residue-field extensions, or general functor-of-points information by itself.

## Examples

Preserve concrete examples. If an example has defining polynomials:

- record the exact polynomial spelling and provenance;
- cross-link or add it to the shared varieties catalog;
- preserve every relevant component polynomial separately;
- preserve the composite scheme/variety separately;
- do not replace an intersection by a product polynomial.

## Notes structure

- `00-reading-map.md`: dependency/order map.
- `01`–`06`: chapter-aligned synthesis.
- `07-algebra-geometry-dictionary.md`: reusable cross-book dictionary.
- `08-computation-and-visualization.md`: executable hooks and limits of pictures.

Extend these files before making parallel fragments unless a new topic genuinely needs its own durable home.
