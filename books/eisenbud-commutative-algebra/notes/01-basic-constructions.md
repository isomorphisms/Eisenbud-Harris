# Basic constructions

These notes cover the part of Eisenbud running from the algebraic-geometric roots through completions and Hensel's lemma.

## 1. Ideals, modules, and the affine dictionary

A quotient `A/I` does two jobs at once. Algebraically it forces every element of `I` to vanish. Geometrically, for `A = k[x_1,…,x_n]`, it records the coordinate ring of the zero set cut out by `I` after passing to the appropriate radical when only the underlying algebraic set matters.

The scheme-theoretic lesson starts immediately: replacing `I` by `√I` preserves the classical zero set but can destroy multiplicity, tangent, and embedded information. Commutative algebra therefore needs ideals, not only their radicals.

Useful distinctions:

- `I + J` imposes both sets of equations and corresponds to intersection of closed sets.
- `I ∩ J` remembers the union of closed sets.
- `IJ` has the same radical as `I ∩ J` but generally carries different nilpotent/multiplicity information.
- `Ann(M)` records which ring elements kill an entire module.
- `Supp(M) = { p : M_p ≠ 0 }` identifies where the module lives.

Noetherianity supplies finiteness. In a Noetherian ring, ascending chains of ideals stabilize; equivalently, every ideal is finitely generated. Most later existence statements—primary decomposition, finite resolutions in polynomial rings, good behavior of completion for finite modules—depend on some form of this finiteness.

## 2. Localization

For a multiplicatively closed set `S ⊂ A`, localization forms

`S^{-1}A = {a/s}`

with every `s ∈ S` forced to become invertible. For an `A`-module `M`, localization gives `S^{-1}M`.

Three special cases should become automatic:

- `A_f`: invert powers of one element `f`; geometrically this corresponds to the principal open set `D(f)`.
- `A_p`: invert every element outside a prime `p`; this isolates behavior near `p`.
- `A_m` for a maximal ideal `m`: the local ring at a classical closed point.

Prime ideals of `S^{-1}A` correspond to primes of `A` disjoint from `S`. In particular, primes of `A_p` correspond to primes contained in `p`, and `A_p` has unique maximal ideal `pA_p`.

Localization is exact. If

`0 → M' → M → M'' → 0`

is exact, then localizing at `S` preserves exactness. This makes local tests powerful: many properties of modules and maps can be checked prime by prime.

### Geometry

`A_p` forgets every component that does not pass through `p`. An element outside `p` becomes a unit, so equations containing such a factor cease to matter locally.

Example: in `A = k[x,y]/(xy)`, localization at the prime `(x)` makes `y` invertible. Since `xy = 0`, invertibility of `y` forces `x = 0`; locally at the generic point of the `y`-axis, the other axis disappears.

## 3. Associated primes and primary decomposition

For a finite `A`-module `M`, an associated prime is a prime of the form

`p = Ann(m)`

for some `m ∈ M`. Associated primes identify places where elements of `M` have exactly prime annihilator.

For `M = A/I`, minimal associated primes correspond to irreducible components of `V(I)`. Embedded associated primes encode extra scheme structure not visible as a separate irreducible component of the underlying topological space.

A primary ideal `Q` has the property that `ab ∈ Q` and `a ∉ Q` imply `b^n ∈ Q` for some `n`. Its radical `√Q` is prime. A primary decomposition

`I = Q_1 ∩ ··· ∩ Q_r`

separates `I` into pieces supported at primes `√Q_i`.

### Example with an embedded prime

In `k[x,y]`,

`I = (x², xy) = (x) ∩ (x², y)`.

The radical of `(x)` is `(x)`. The ideal `(x²,y)` is `(x,y)`-primary. Hence

`Ass(k[x,y]/I) = {(x), (x,y)}`.

The line `x = 0` is the visible component. The maximal ideal `(x,y)` is embedded at the origin and records extra infinitesimal structure.

### What localization does to a decomposition

Localizing at `p` kills every primary component whose radical is not contained in `p`. This provides a precise algebraic version of “look only at components passing through the chosen point.”

## 4. Integral dependence and the Nullstellensatz

An element `b` in an `A`-algebra `B` is integral over `A` if it satisfies a monic equation

`b^n + a_{n-1}b^{n-1} + ··· + a_0 = 0`,  with `a_i ∈ A`.

A finite `A`-algebra is integral over `A`. Integral dependence behaves transitively, so normalization can be built in stages.

The integral closure of a domain `A` in its fraction field consists of elements integral over `A`. A domain equal to this closure is normal or integrally closed.

Geometrically, normalization repairs certain singularities without changing the function field. The cusp

`A = k[t²,t³] ≅ k[x,y]/(y²-x³)`

has normalization `k[t]`. The map `A → k[t]` is finite and integral; geometrically the affine line parametrizes the cusp.

The Nullstellensatz connects maximal ideals of finitely generated algebras over an algebraically closed field with points. Its radical form identifies vanishing ideals with radicals:

`I(V(I)) = √I`.

This equality explains exactly why classical affine varieties lose nilpotent information: pointwise vanishing only sees the radical.

## 5. Filtrations, associated graded objects, and Artin–Rees

Given an ideal `I`, the powers

`M ⊇ IM ⊇ I²M ⊇ ···`

form the `I`-adic filtration. The associated graded module

`gr_I(M) = ⊕_{n≥0} I^nM / I^{n+1}M`

turns successive infinitesimal layers into a graded object.

The Artin–Rees lemma controls how this filtration meets a submodule. For `N ⊂ M` with finite modules over a Noetherian ring, some `c` exists such that for all sufficiently large `n`,

`I^n M ∩ N = I^{n-c}(I^cM ∩ N)`.

The exact indexing can be packaged in several equivalent forms; the substance is eventual compatibility between intersection with `N` and the `I`-adic filtration.

Why this matters:

- completion behaves well on finite modules;
- submodules inherit controlled `I`-adic filtrations;
- Krull-intersection-type results become available;
- associated graded constructions reflect finite module structure rather than arbitrary pathologies.

## 6. Flat families

An `A`-module `M` is flat when tensoring with `M` preserves injections, equivalently finite exact sequences remain exact after `- ⊗_A M`.

Flatness should be read geometrically as a condition controlling variation over a base. It does **not** mean every geometric property of a fiber stays constant. A flat family can specialize from reduced to nonreduced fibers, smooth to singular fibers, or irreducible to reducible fibers.

### Flat example

Let

`B = k[t,x]/(x²-t)`

viewed as a `k[t]`-algebra. As a `k[t]`-module, `B` is free with basis `{1,x}`, hence flat.

The fiber at `t=a` is

`k[x]/(x²-a)`.

At `a=0` the fiber is nonreduced (`x²=0`), while many nonzero fibers are reduced. Flatness preserves the algebraic size of the finite fibers here—rank two—not reducedness.

### Nonflat contrast

`B = k[t,x]/(tx)`

has `t`-torsion: `t·x = 0`. Over `t ≠ 0`, the equation forces `x=0`; over `t=0`, the whole affine `x`-line survives. The special fiber jumps in dimension, exactly the sort of behavior flatness is designed to control.

## 7. Completion and Hensel's lemma

The `I`-adic completion is

`Â = lim← A/I^n`.

For a local ring `(A,m)`, the `m`-adic completion records its formal neighborhood. The model example is

`k[x]_(x)  →  k[[x]]`.

Completion keeps all finite-order data simultaneously. It replaces functions near a point by compatible jets/formal power series.

For finite modules over a Noetherian ring, Artin–Rees underlies exactness properties of completion. Completion also interacts strongly with Nakayama's lemma and local structure.

Hensel's lemma is a lifting principle: under suitable hypotheses, a factorization or simple root modulo the maximal ideal lifts to the complete local ring. It acts as an algebraic implicit-function mechanism in the formal neighborhood.

## Theorem ledger

Record proofs or proof sketches for these results as the reading proceeds:

- Hilbert basis theorem.
- Exactness of localization.
- Prime correspondence under localization.
- Existence of associated primes for nonzero finite modules over Noetherian rings.
- Existence of primary decompositions in the Noetherian setting.
- Finiteness implies integrality.
- Lying-over / going-up consequences of integral extensions.
- Weak and strong Nullstellensatz.
- Artin–Rees lemma.
- Flatness criteria used in later chapters.
- Exactness properties of completion for finite modules.
- Krull intersection in the hypotheses used by Eisenbud.
- Hensel lifting in the form used by the book.

## Cross-links

- Schemes should reuse localization, nilpotents, and associated primes directly.
- Fulton should reuse codimension/components/multiplicity consequences rather than re-derive them informally.
- Macaulay2 examples should compute radicals, associated primes, primary decompositions, integral closures where available, and flat/nonflat test families.
