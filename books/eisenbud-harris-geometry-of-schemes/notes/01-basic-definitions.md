# I. Basic definitions

## Affine schemes: three layers

For a commutative ring `A`, `Spec A` should be tracked at three levels.

### Points

A point is a prime ideal `p ⊂ A`. Closed points need not exhaust the space, and nonclosed generic points carry component information efficiently.

The classical equation-solving picture asks which tuples make polynomials vanish. The scheme picture asks which prime ideals contain an ideal. Over an algebraically closed field, maximal ideals recover ordinary points in affine space, but prime ideals add generic points and work over arbitrary bases.

### Topology

For an ideal `I`, the closed set

`V(I) = { p ∈ Spec A : I ⊂ p }`

depends only on the radical of `I`. The underlying topological space sees support but forgets nilpotent thickening.

Basic opens `D(f)` correspond to localizing at powers of `f`:

`D(f) ↔ A_f`.

### Structure sheaf

The structure sheaf restores ring data lost by the topology. Sections on a basic open are modeled by `A_f`; stalks at `p` are `A_p`.

The local ring `O_{X,p}` records functions near `p`. Its maximal ideal and residue field are geometric data, not bookkeeping.

## General schemes

A scheme is locally affine: cover it by open subsets isomorphic to affine schemes and glue the locally ringed spaces compatibly.

Important distinctions:

- an open subscheme changes the region while preserving local structure;
- a closed subscheme comes from a sheaf of ideals and can carry nilpotent structure invisible in its support;
- the same underlying set can carry different scheme structures.

A morphism of schemes contains both a continuous map and compatible maps of structure sheaves. For affines the arrow reverses:

`A → B` induces `Spec B → Spec A`.

Keep that contravariance explicit in every computation.

## Relative schemes and base change

Fix a base scheme `S`. An `S`-scheme is a scheme equipped with a morphism to `S`. Fiber products let geometry change base:

`X_T = X ×_S T`.

On affines:

`Spec B ×_{Spec A} Spec C ≅ Spec(B ⊗_A C)`.

This ties tensor products directly to geometric fibers and base change.

## Fibers

For `X → S` and `s ∈ S`, the fiber uses the residue field `κ(s)`:

`X_s = X ×_S Spec κ(s)`.

A family can have fibers with different visible shapes or multiplicities. Flatness later controls which numerical/geometric features vary well.

## Functor of points: first encounter

For a scheme `X`, the assignment `T ↦ Hom(T, X)` captures more information than ordinary field-valued points. Nilpotent test schemes can detect infinitesimal directions that a set of classical points cannot see.

Record the idea here and return in Chapter VI after concrete examples.

## Computational hooks

- Use localization examples to check basic opens.
- Use tensor products to compute simple fibers/base changes.
- For `Spec A/I`, keep both `I` and `rad I`: their supports agree, their scheme structures may not.
- A SURFER view of `V(I)` should be labeled as a chosen real/reduced geometric shadow, never as the whole scheme.
