# Reading map

The useful path through *The Geometry of Schemes* is not purely linear. The six chapters form a dependency graph whose algebraic spine already lives partly in the Eisenbud commutative-algebra notes.

## First pass

### 1. Basic definitions

Learn `Spec A` simultaneously as a set of prime ideals, a topological space, and a locally ringed space. The structure sheaf is the decisive step: a scheme remembers functions and infinitesimal algebra, not merely points.

Keep localization visible throughout. The stalk at a prime `p` is built from `A_p`; local questions in geometry become local algebra.

### 2. Examples

Read this chapter immediately after the definitions. Reduced schemes show how classical algebraic sets fit into scheme language. Nonreduced examples explain why schemes are more than a repackaging of varieties.

Prioritize double and multiple points, embedded points and primary decomposition, degree and multiplicity, flat families and limits, multiple structures on lines, and arithmetic examples over `Spec Z`.

### 3. Projective schemes

Move from `Spec` to `Proj`, then connect graded rings/modules to projective geometry. The payoff includes tangent cones, Grassmannians, Hilbert functions and polynomials, free resolutions, and intersection calculations.

Cross-link heavily to Gröbner bases and graded algebra, syzygies/free resolutions, Fulton for multiplicity and intersection theory, and SURFER only for selected low-dimensional affine/projective charts.

## Second pass

### 4. Classical constructions

Use the machinery on flexes, blow-ups, lines on surfaces/Fano schemes, and degenerations. Blow-ups deserve special attention because they turn local algebra into a geometric replacement of a locus by direction data.

### 5. Local constructions

Treat resultants, discriminants, singular schemes, dual curves, images, and double-point loci as examples of elimination plus scheme structure. This chapter should feed directly into computational experiments.

### 6. Schemes and functors

Return to the functor of points after concrete examples have made the need visible. Parameter spaces, Hilbert schemes, tangent spaces to moduli-type objects, and group schemes become easier to parse after Chapters II–V.

## Cross-book dependency map

`Commutative Algebra`
→ ideals / primes / localization / modules / dimension / primary decomposition
→ **Basic Definitions + Examples**

graded rings / modules / resolutions
→ **Projective Schemes**
→ *Geometry of Syzygies*

multiplicity / tangent cones / proper and excess intersection
→ **Projective + Classical Constructions**
→ Fulton

families / flatness / base change
→ **Examples + Relative Schemes + Functors**
→ Hilbert schemes and moduli

elimination / determinants / Fitting ideals
→ **Local Constructions**
→ computational algebra / Macaulay2

## What to extract while reading

For each section, collect four things:

1. the algebraic construction;
2. the geometric interpretation;
3. one concrete example or counterexample;
4. one executable hook, if a computation can test or visualize it.

Do not let the fourth item replace the first three.
