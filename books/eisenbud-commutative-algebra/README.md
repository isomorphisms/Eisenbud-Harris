# Commutative Algebra: with a View Toward Algebraic Geometry

**David Eisenbud. Graduate Texts in Mathematics 150, Springer, 1995.**

Publisher/DOI: https://doi.org/10.1007/978-1-4612-5350-1

## Role here

This is the primary book and the algebraic spine of the repository.

The reading project should keep the geometric meaning attached to the algebra instead of reducing the book to a list of ring-theoretic techniques. The publisher's description itself emphasizes localization, primary decomposition, dimension theory, differentials, homological methods, free resolutions, duality, Gröbner bases, and constructive methods in algebraic geometry.

## Serious notes

- [`notes/00-reading-map.md`](notes/00-reading-map.md) — exact book map, dependency blocks, algebra ↔ geometry dictionary, and reading passes.
- [`notes/01-basic-constructions.md`](notes/01-basic-constructions.md) — localization, associated primes, primary decomposition, integral dependence, Nullstellensatz, Artin–Rees, flatness, completion, and Hensel lifting.
- [`notes/02-dimension-theory.md`](notes/02-dimension-theory.md) — height, systems of parameters, principal ideal theorem, codimension one, Hilbert–Samuel multiplicity, Noether normalization, generic freeness, and fiber dimension.
- [`notes/03-grobner-bases-and-differentials.md`](notes/03-grobner-bases-and-differentials.md) — initial ideals, Buchberger/elimination/degeneration, Kähler differentials, conormal sequences, tangent spaces, and Jacobian criteria.
- [`notes/04-homological-methods.md`](notes/04-homological-methods.md) — regular sequences, Koszul complexes, depth, Cohen–Macaulay rings, regular local rings, resolutions, Fitting ideals, canonical modules, and Gorenstein duality.
- [`notes/05-worked-examples.md`](notes/05-worked-examples.md) — ten examples carried across multiple chapters: crossing axes, embedded components, cusp normalization, flat/nonflat families, Hilbert–Samuel growth, elimination, Koszul, Fitting, and Gorenstein examples.
- [`notes/06-dependency-and-intersection-map.md`](notes/06-dependency-and-intersection-map.md) — theorem dependency graph and the route from Eisenbud into schemes, syzygies, and Fulton intersection theory.

The notes deliberately reuse the same rings across chapters. A ring should not vanish from the discussion after one definition: localization, associated primes, dimension, differentials, resolutions, and duality should all be tested against common examples.

## Threads to track

- localization as change of geometric viewpoint;
- associated primes and primary decomposition as structure of components and embedded behavior;
- integral dependence and the Nullstellensatz;
- filtrations, completions, and local information;
- flat families and what survives under variation;
- dimension, codimension, systems of parameters, and fibers;
- Gröbner bases as a constructive/computational bridge;
- differentials and singularity information;
- homological methods, free resolutions, and syzygies;
- duality.

## Outward links

- Scheme-theoretic geometry: [`../eisenbud-harris-geometry-of-schemes/`](../eisenbud-harris-geometry-of-schemes/)
- Syzygies: [`../eisenbud-geometry-of-syzygies/`](../eisenbud-geometry-of-syzygies/)
- Computation/Macaulay2: [`../computations-with-macaulay2/`](../computations-with-macaulay2/)
- Intersection theory: [`../../notes/fulton-intersection-theory-bridge.md`](../../notes/fulton-intersection-theory-bridge.md)
