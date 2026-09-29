# Reading map: *Commutative Algebra with a View Toward Algebraic Geometry*

This note treats Eisenbud's book as one connected machine. The aim is not to summarize prose chapter by chapter. The aim is to record what each construction does, why it enters algebraic geometry, which later arguments depend on it, and which examples should become automatic.

## Contents and dependency blocks

The published contents divide naturally into four mathematical blocks:

### A. Basic constructions

- *Roots of Commutative Algebra*, pp. 21–56
- *Localization*, pp. 57–86
- *Associated Primes and Primary Decomposition*, pp. 87–115
- *Integral Dependence and the Nullstellensatz*, pp. 117–145
- *Filtrations and the Artin–Rees Lemma*, pp. 147–155
- *Flat Families*, pp. 157–179
- *Completions and Hensel's Lemma*, pp. 181–211

These chapters teach how to change scale without losing control: pass from a ring to a neighborhood, split an object into components, enlarge a ring integrally, keep track of powers of an ideal, vary a fiber in a family, or replace local algebra by its formal completion.

### B. Dimension theory

- *Introduction to Dimension Theory*, pp. 215–226
- *Fundamental Definitions of Dimension Theory*, pp. 227–231
- *The Principal Ideal Theorem and Systems of Parameters*, pp. 233–248
- *Dimension and Codimension One*, pp. 251–273
- *Dimension and Hilbert–Samuel Polynomials*, pp. 275–284
- *The Dimension of Affine Rings*, pp. 285–306
- *Elimination Theory, Generic Freeness, and the Dimension of Fibers*, pp. 307–320

Dimension becomes a bridge between prime-ideal combinatorics, local algebra, transcendence degree, multiplicity, and the geometry of fibers.

### C. Constructive algebra and infinitesimal geometry

- *Gröbner Bases*, pp. 321–384
- *Modules of Differentials*, pp. 385–419

These chapters provide two very different ways to inspect equations. Gröbner theory changes the equations into a combinatorial normal form. Differentials linearize them infinitesimally.

### D. Homological structure

- *Regular Sequences and the Koszul Complex*, pp. 423–450
- *Depth, Codimension, and Cohen–Macaulay Rings*, pp. 451–472
- *Homological Theory of Regular Local Rings*, pp. 473–492
- *Free Resolutions and Fitting Invariants*, pp. 493–522
- *Duality, Canonical Modules, and Gorenstein Rings*, pp. 523–559

Here equations stop being merely generators of ideals. Their relations, relations among relations, depth, projective dimension, Ext, and duality become geometric invariants.

## Five questions to ask in every chapter

1. **What is the local object?** Prime localization, local ring, completion, stalk-like construction, local cohomological invariant, or tangent/cotangent object.
2. **What geometric phenomenon does the algebra detect?** Components, multiplicity, dimension, singularity, variation in families, intersection behavior, or failure of smoothness.
3. **What survives base change?** Tensor products and flatness control this question repeatedly.
4. **What can be computed from generators and matrices?** Gröbner bases, Jacobian matrices, Koszul complexes, free resolutions, and Fitting ideals answer different versions.
5. **What later theorem needs this?** Notes should always record dependencies rather than treating each result as isolated.

## Core dictionary

| Algebra | Geometry |
| --- | --- |
| prime ideal `p` | irreducible closed subvariety / point of `Spec A` |
| localization `A_p` | functions visible near `p` |
| maximal ideal `m` | closed point in the classical affine picture |
| `m/m²` | cotangent space at the point |
| `(m/m²)^*` | Zariski tangent space |
| associated prime | component on which some element of a module is supported exactly |
| minimal associated prime | irreducible component of the support |
| embedded associated prime | scheme structure invisible in the underlying set of irreducible components |
| integral extension | finite-like geometric map; normalization is the central example |
| flat module/family | algebraic condition preventing certain jumps and torsion under base change |
| completion `Â` | formal neighborhood |
| height of `p` | local codimension measured by chains of primes |
| Hilbert–Samuel multiplicity | local multiplicity |
| initial ideal | combinatorial degeneration retaining key graded data |
| `Ω_{A/k}` | cotangent data / first-order variation |
| regular sequence | equations cutting with the expected homological behavior |
| depth | length of the longest non-zero-divisor sequence available locally |
| Cohen–Macaulay | depth reaches dimension |
| minimal free resolution | full hierarchy of equations and syzygies |
| Fitting ideal | locus where a module needs more generators / changes rank |
| canonical module | algebraic dualizing object |
| Gorenstein | Cohen–Macaulay plus especially strong self-duality |

## Recommended reading passes

### Pass 1 — geometry first

Read localization, primary decomposition, integral dependence, flatness, dimension, differentials. For each construction, draw or compute one affine example.

### Pass 2 — computation

Read Gröbner bases alongside Macaulay2. Every theorem that asserts an ideal equality, dimension, Hilbert function, elimination statement, or syzygy should get at least one machine-checkable example.

### Pass 3 — homological compression

Read regular sequences → depth → Cohen–Macaulay → regular local rings → resolutions → duality as a single dependency chain.

### Pass 4 — intersection-theory preparation

Return to dimension/codimension, regular sequences, multiplicity, flatness, and Fitting/degeneracy loci before reading *3264 and All That* and Fulton.

## Cross-repository destinations

- Scheme language: [`../../eisenbud-harris-geometry-of-schemes/`](../../eisenbud-harris-geometry-of-schemes/)
- Syzygies: [`../../eisenbud-geometry-of-syzygies/`](../../eisenbud-geometry-of-syzygies/)
- Macaulay2: [`../../computations-with-macaulay2/`](../../computations-with-macaulay2/)
- Fulton bridge: [`../../../notes/fulton-intersection-theory-bridge.md`](../../../notes/fulton-intersection-theory-bridge.md)
- Canonical Fulton repository: https://github.com/walnut-burgundy/fulton
