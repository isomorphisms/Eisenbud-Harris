# V. Local constructions

This chapter is a natural meeting point for scheme theory and computational algebra. Images, resultants, discriminants, singular loci, dual curves, and multiple-point loci turn geometric conditions into computable ideals.

## Scheme-theoretic images

When elimination computes an image, record source ring/ideal, morphism or substitution, elimination order, resulting ideal, and whether the output represents the scheme-theoretic image or only a closure/support.

## Fitting ideals

Fitting ideals extract geometric loci from presentations of modules. Minors of a presentation matrix define rank-drop conditions.

module/presentation
→ minors
→ Fitting ideal
→ degeneracy locus.

Determinantal and rank-deficiency examples should cross-link Fulton when intersection classes enter.

## Resultants

A resultant eliminates a variable and detects common roots. The Sylvester determinant gives a concrete form in the standard univariate setup.

For a pair `f,g`, preserve all three objects:

- `f`;
- `g`;
- `Res(f,g)`.

A resultant that enters the text is a derived polynomial with its own provenance.

## Discriminants and singular schemes

For a hypersurface family `F(x; a)=0`, singular fibers satisfy `F=0` together with vanishing derivatives in geometric variables. Elimination projects the singular incidence scheme into parameter space.

family polynomial
→ Jacobian equations
→ incidence ideal
→ elimination
→ discriminant polynomial/locus.

Render representative fibers on each side of the discriminant and a singular fiber on it; keep the algebra authoritative.

## Singular locus

For a hypersurface, the Jacobian criterion supplies singular-locus equations under appropriate hypotheses. More general schemes require minors/rank conditions rather than assuming one equation.

A picture can suggest singular behavior but cannot certify the scheme-theoretic singular locus.

## Dual curves

A dual curve records tangent lines to a plane curve as points in the dual projective plane. Incidence equations plus elimination can compute it. Degeneracies in the dual often encode special tangent behavior.

## Double-point loci

When a map identifies distinct source points or loses immersion rank, a multiple-point locus can carry nontrivial scheme structure. Connect this back to fiber products, diagonals, Fitting ideals, elimination, and multiplicity.

## Implementation priority

Good deterministic tests include resultants, discriminants, Jacobian ideals, minors, and elimination outputs that can be checked independently of prose.
