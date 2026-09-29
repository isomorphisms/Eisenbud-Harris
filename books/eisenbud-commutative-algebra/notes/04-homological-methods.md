# Homological methods

The final main block of Eisenbud's book explains how equations acquire higher-order structure: relations among generators, relations among relations, depth, projective dimension, and duality. These invariants distinguish spaces that can look similar from ideals or dimensions alone.

## 1. Regular sequences

Let `(A,m)` be a local ring and `M` a finite `A`-module. A sequence

`x_1,…,x_r ∈ m`

is `M`-regular when:

1. `x_1` is a non-zero-divisor on `M`;
2. for each `i>1`, `x_i` is a non-zero-divisor on `M/(x_1,…,x_{i-1})M`;
3. `(x_1,…,x_r)M ≠ M`.

The order matters in the definition, although under common local/Noetherian hypotheses permutations of a regular sequence remain regular.

Geometrically, a regular sequence is the algebraic model for equations cutting with the expected homological behavior. If a codimension-`r` subvariety is locally defined by an `r`-term regular sequence, it is a local complete intersection.

### Simple contrast

In `k[x,y]_(x,y)`, the sequence `x,y` is regular.

The sequence `x,xy` is not: after quotienting by `x`, the second element becomes zero and therefore cannot be a non-zero-divisor on the nonzero quotient.

## 2. The Koszul complex

Given `x_1,…,x_r ∈ A`, the Koszul complex is built from the exterior algebra on a free module of rank `r`, with differential given by contraction against the tuple `x`.

For two elements:

`0 → A → A² → A → A/(x_1,x_2) → 0`

with maps determined by `(x_1,x_2)` and the alternating syzygy `(-x_2,x_1)`.

If the sequence is regular, the Koszul complex resolves the quotient. Nonzero higher Koszul homology measures failure of regularity.

This makes the Koszul complex an ideal bridge among:

- regular sequences;
- complete intersections;
- Tor;
- depth;
- explicit free resolutions.

## 3. Depth

For a local Noetherian ring `(A,m)` and finite `M`,

`depth_A M`

is the maximum length of an `M`-regular sequence contained in `m`.

Equivalent homological descriptions include

`depth_A M = inf { i : Ext_A^i(A/m, M) ≠ 0 }`

under the standard finite/local hypotheses.

Dimension asks how many prime-ideal steps an object has. Depth asks how many successive non-zero-divisors it can withstand. Always

`depth M ≤ dim M`.

The gap

`dim M - depth M`

measures failure of Cohen–Macaulay behavior.

## 4. Cohen–Macaulay rings and modules

A finite module `M` over a local Noetherian ring is Cohen–Macaulay when

`depth M = dim M`.

A local ring is Cohen–Macaulay when it is so as a module over itself.

Equivalent behavior to track:

- every system of parameters is a regular sequence in the local Cohen–Macaulay setting;
- codimension and regular-sequence length agree as far as possible;
- unmixedness/equidimensional consequences become available under the relevant hypotheses;
- complete intersections are Cohen–Macaulay.

This class matters for intersection theory because dimension counting becomes trustworthy enough to support multiplicity formulas and proper-intersection arguments.

### Non-Cohen–Macaulay example

Let

`A = k[x,y]_(x,y)/(x²,xy)`.

Its dimension is one because the minimal prime is `(x)`. Its depth is zero: every element of the maximal ideal that could serve as a parameter acts as a zero-divisor on the embedded nilpotent element represented by `x` in the relevant way. The embedded associated prime `(x,y)` signals the depth failure.

## 5. Regular local rings

A Noetherian local ring `(A,m,k)` is regular when

`dim_k(m/m²) = dim A`.

The left side is the embedding dimension: the minimum number of generators of `m`, or geometrically the tangent-space dimension at the corresponding point over `k`.

Thus a finite-type point is regular when tangent dimension matches local dimension, after the standard field hypotheses needed to identify regularity and smoothness.

The Auslander–Buchsbaum–Serre theorem connects regularity to homological dimension:

- `A` regular local
- `k` has finite projective dimension over `A`
- `A` has finite global dimension

are equivalent in the Noetherian local setting; the global dimension then equals `dim A`.

For a finite module `M` of finite projective dimension, the Auslander–Buchsbaum formula gives

`pd_A(M) + depth_A(M) = depth(A)`.

This equation turns projective dimension into a measure of how much depth a module has lost relative to the ring.

## 6. Free resolutions and syzygies

A free resolution of `M` is an exact complex

`··· → F_2 → F_1 → F_0 → M → 0`

with each `F_i` free.

`F_0` records generators.

`F_1` records relations among generators.

`F_2` records relations among those relations.

Higher `F_i` continue the hierarchy.

Over a local ring, a free resolution is minimal when every differential has image inside `mF_{i-1}`. In a standard graded polynomial ring, the analogous condition uses entries of positive degree.

Minimal Betti numbers become invariants:

`β_i(M) = rank F_i`

locally, with graded refinements `β_{i,j}` in the graded case.

For `S = k[x_1,…,x_n]`, Hilbert's syzygy theorem bounds projective dimension of finite graded modules by `n`. This gives a finite ceiling to the hierarchy of syzygies over a polynomial ring.

This chapter is the direct entrance to Eisenbud's later *Geometry of Syzygies*.

## 7. Fitting ideals

Suppose a finite module `M` has presentation

`A^m --φ→ A^n → M → 0`.

The `i`th Fitting ideal `Fitt_i(M)` is generated by the `(n-i)×(n-i)` minors of a matrix for `φ` (with the usual conventions at the ends).

Fitting ideals are independent of the chosen presentation and commute well with base change.

Geometric interpretation:

- minors vanish where matrix rank drops;
- rank drop means the cokernel needs more generators;
- Fitting ideals therefore cut out degeneracy loci.

For a finite module,

`Supp(M) = V(Fitt_0(M))`.

Higher Fitting ideals stratify the support according to the minimum number of generators.

This should be cross-linked directly to Porteous formulas and degeneracy loci in *3264 and All That* and Fulton.

## 8. Canonical modules and duality

For a Cohen–Macaulay quotient `R = S/I` of a suitable regular/Gorenstein ambient ring `S`, a canonical module can be realized in the form

`ω_R ≅ Ext_S^c(R,S)`

where `c` is the codimension, under the usual hypotheses.

The canonical module packages dualizing information in an algebraic object. It generalizes the role played by top differential forms on smooth varieties.

Duality reverses dimension/support information in a controlled way. The point of the canonical module is not an isolated definition: it makes local/global duality statements concrete enough to calculate.

## 9. Gorenstein rings

A Cohen–Macaulay local ring with canonical module is Gorenstein when

`ω_R ≅ R`.

Equivalent formulations use finite injective dimension or one-dimensional socle behavior in the Artinian case.

Important examples:

- regular local rings are Gorenstein;
- complete intersections are Gorenstein;
- hypersurface rings are therefore Gorenstein.

Gorenstein means a strong self-duality, not “nonsingular.” A singular hypersurface can be Gorenstein.

Example:

`k[x,y]/(y²-x³)`

is a hypersurface, hence Gorenstein, even though the cusp is singular at the origin.

## 10. The homological dependency chain

`regular sequence`

`↓`

`Koszul exactness / complete intersection`

`↓`

`depth`

`↓`

`Cohen–Macaulay`

`↓`

`controlled resolutions and codimension`

`↓`

`canonical module / duality`

`↓`

`Gorenstein self-duality`

Regular local rings intersect this chain from another direction through finite global/projective dimension.

## Theorem ledger

- Koszul homology criterion for a regular sequence in the form used by the book.
- `depth ≤ dimension`.
- characterizations of Cohen–Macaulay modules/rings used later.
- Auslander–Buchsbaum formula.
- Auslander–Buchsbaum–Serre characterization of regular local rings.
- Hilbert syzygy theorem in the polynomial-ring setting.
- invariance and base-change behavior of Fitting ideals.
- support via `Fitt_0`.
- construction/characterization of canonical modules under stated hypotheses.
- standard Gorenstein equivalences in the local Cohen–Macaulay setting.

## Computational targets

- Koszul homology for a regular and a nonregular sequence.
- depth and associated primes of `k[x,y]/(x²,xy)`.
- minimal graded resolution of a small monomial ideal.
- Betti table of a plane curve or finite point scheme.
- Fitting ideals of a presented module and the corresponding rank-drop locus.
- canonical module/Gorenstein checks for complete intersections versus a non-Gorenstein Artinian example.
