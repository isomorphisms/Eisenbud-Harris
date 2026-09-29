# Worked examples to carry through the book

These examples should recur across chapters. Reusing the same rings makes the connections visible: localization changes the view, primary decomposition finds hidden structure, dimension supplies size, Gröbner bases compute, differentials detect singularity, and homological algebra records deeper defects.

## Example A — Two coordinate axes

`A = k[x,y]/(xy)`.

### Components

`(xy) = (x) ∩ (y)`

in `k[x,y]`. The two minimal primes correspond to the two axes.

`dim A = 1`.

### Localization

At the prime `(x)`, `y` becomes invertible, hence `x=0`. Thus

`A_(x) ≅ k[y,y^{-1}]_(0)`

up to the natural identification at the generic point. The other component disappears.

At the maximal ideal `(x,y)`, both branches survive.

### Differentials

`Ω_{A/k}` has presentation

`A --(y,x)→ A dx ⊕ A dy → Ω_{A/k} → 0`.

At the origin the Jacobian row `(y,x)` vanishes, so the tangent space has dimension two while the curve has dimension one. The crossing is singular.

### Homological side

`xy` is a non-zero-divisor in the polynomial ring `k[x,y]`, so `A` is a hypersurface and therefore Cohen–Macaulay and Gorenstein despite being singular and reducible.

**Lesson:** singular, reducible, Cohen–Macaulay, and Gorenstein describe different properties.

---

## Example B — An embedded component

`A = k[x,y]/(x²,xy)`.

Use the decomposition

`(x²,xy) = (x) ∩ (x²,y)`.

The associated primes are

`(x)` and `(x,y)`.

`(x)` gives the visible line. `(x,y)` is embedded at the origin.

Localizing away from `(x,y)` kills the embedded component. The underlying reduced variety is just the line `x=0`, so passing to the radical loses the embedded structure.

At the local ring at `(x,y)`, depth drops below dimension, producing a compact non-Cohen–Macaulay example.

**Lesson:** associated primes and depth detect information invisible in the point set.

---

## Example C — The cusp and normalization

`A = k[x,y]/(y²-x³) ≅ k[t²,t³] ⊂ k[t]`.

The element `t` is integral over `A` because it satisfies the monic equation

`T² - x = 0`

inside the fraction field after identifying `x=t²`.

The integral closure of the cusp ring is `k[t]`. The normalization map

`Spec k[t] → Spec A`

parametrizes the cusp by

`x=t², y=t³`.

For characteristic not equal to `2` or `3`, the Jacobian of `f=y²-x³` is

`(-3x², 2y)`.

It vanishes at the origin, giving tangent-space dimension two for a one-dimensional local ring.

The cusp is a hypersurface, hence Cohen–Macaulay and Gorenstein.

**Lesson:** normalization, singularity, Cohen–Macaulayness, and Gorensteinness are logically distinct.

---

## Example D — A flat family whose special fiber becomes nonreduced

`B = k[t,x]/(x²-t)` over `k[t]`.

Every element reduces uniquely to

`a(t) + b(t)x`,

so `B` is free of rank two as a `k[t]`-module. Hence it is flat.

Fiber at `t=a`:

`B_a = k[x]/(x²-a)`.

For suitable nonzero `a`, the fiber is reduced (and over an algebraically closed field of characteristic not two, splits into two reduced points). At `a=0`,

`B_0 = k[x]/(x²)`

is one nonreduced double point.

**Lesson:** flatness controls module-theoretic size, not reducedness.

---

## Example E — A nonflat family with a dimension jump

`B = k[t,x]/(tx)` over `k[t]`.

The class of `x` is `t`-torsion, so `B` is not flat over the domain `k[t]`.

For `t=a≠0`, the fiber relation `ax=0` forces `x=0`, giving a point.

For `t=0`, the relation disappears and the fiber is

`k[x]`,

an affine line.

**Lesson:** torsion in the total module can appear geometrically as a jumping special fiber.

---

## Example F — Hilbert–Samuel growth at a smooth point

`A = k[x,y]_(x,y)` and `m=(x,y)`.

A basis of `A/m^{n+1}` is represented by monomials `x^i y^j` with `i+j≤n`. Thus

`length(A/m^{n+1}) = (n+1)(n+2)/2 = binomial(n+2,2)`.

The Hilbert–Samuel polynomial has degree two, recovering `dim A=2`, and leading coefficient `1/2`, giving multiplicity one.

Compare this later with a singular plane curve, where local multiplicity exceeds one.

---

## Example G — Elimination by equations and by Gröbner bases

`I = (xy-1, y²-x) ⊂ k[x,y]`.

Substituting `x=y²` into `xy=1` gives

`y³-1=0`.

Similarly `x³-1=0`.

A Gröbner basis with an elimination order recovers these univariate consequences systematically:

`I ∩ k[y] = (y³-1)`

and

`I ∩ k[x] = (x³-1)`

under the expected field-independent polynomial identity interpretation.

**Lesson:** elimination theory turns projection/consequence finding into an algorithm.

---

## Example H — Koszul resolution of the residue field

Let

`R = k[x,y]_(x,y)`.

The regular sequence `x,y` gives the Koszul resolution

`0 → R → R² → R → k → 0`.

One choice of maps is

`R → R² : 1 ↦ (-y,x)`

and

`R² → R : (a,b) ↦ ax + by`.

The resolution length equals `dim R=2`. This is the smallest model of the regular-local/global-dimension theorem.

---

## Example I — Fitting ideal as a rank-drop locus

Let a module `M` be the cokernel of

`φ = [[x,y],[z,w]] : A² → A²`

over `A=k[x,y,z,w]`.

`Fitt_0(M)` is generated by the determinant

`xw-yz`.

Thus `Supp(M)` lies on the determinantal hypersurface `xw-yz=0`. Higher Fitting ideals are generated by smaller minors and record stronger rank drops.

This is the elementary local algebra behind determinantal varieties and, in much richer form, degeneracy-locus formulas in intersection theory.

---

## Example J — Singular but Gorenstein

Any hypersurface local ring

`R = S/(f)`

with `S` regular local and `f` a non-zero-divisor is a complete intersection of codimension one. Hence `R` is Cohen–Macaulay and Gorenstein.

Taking

`f=y²-x³`

returns the cusp.

**Lesson:** Gorenstein self-duality does not imply regularity.

## Machine-checking plan

Implement these examples in Macaulay2 with a small script per example. Each script should print only the facts being checked:

- `dim`;
- `associatedPrimes` / primary decomposition where appropriate;
- Gröbner basis and elimination ideals;
- Jacobian / differentials presentation;
- `depth` and projective dimension;
- Betti table;
- Fitting ideals;
- normalization or integral-closure computation when supported.

Keep the mathematical note primary and the machine output secondary: computation should verify an explicit claim, not replace the explanation.
