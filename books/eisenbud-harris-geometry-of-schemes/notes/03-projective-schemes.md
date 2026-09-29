# III. Projective schemes

Projective geometry enters algebraically through graded rings and modules. Keep the grading visible; forgetting it destroys part of the geometric structure.

## Proj

For a graded ring `S`, `Proj S` uses homogeneous prime ideals avoiding the irrelevant ideal. Standard opens recover affine charts.

`P^n_k = Proj k[x₀,…,xₙ]`.

A homogeneous ideal `I` defines `Proj(S/I)`. When a concrete homogeneous polynomial appears, catalog the polynomial and record which affine chart is used for a SURFER view. The projective scheme is not identical to any one chart.

## Graded modules and sheaves

A graded `S`-module produces a sheaf on `Proj S`. Shifts in grading become twists of sheaves.

Keep a three-way dictionary:

graded module
↔ associated sheaf
↔ geometric information on the projective scheme.

## Tangent spaces and tangent cones

At a point, first-order terms in local defining equations determine the Zariski tangent space. When first derivatives vanish or rank drops, tangent-space dimension can exceed local dimension.

The tangent cone retains leading local information beyond the tangent space. For singular examples, pair defining ideal, Jacobian/rank, tangent-space equations, lowest-degree local terms, and a support render when useful.

SURFER can visualize an explicit low-dimensional tangent cone. Label it as the tangent cone, not as the original scheme.

## Grassmannians and universal constructions

Grassmannians parameterize linear subspaces. Plücker coordinates translate subspaces into projective algebraic equations.

Cross-link to Fulton–Harris when symmetry/representations become central and to *3264 and All That* when enumerative questions use Grassmannians.

## Hilbert functions and polynomials

The Hilbert function of a graded coordinate ring eventually agrees with a polynomial. Its degree and leading coefficient encode dimension and degree information.

graded pieces
→ Hilbert function
→ Hilbert polynomial
→ geometric dimension/degree information.

Schemes with the same visible support can still differ in Hilbert data.

## Free resolutions

A graded free resolution contains information beyond the Hilbert polynomial. Betti numbers, generator degrees, and syzygies feed directly into [*The Geometry of Syzygies*](../../eisenbud-geometry-of-syzygies/).

## Intersection calculations

Preserve both support and the scheme-theoretic intersection ideal. Nontransverse intersections require multiplicity or excess structure.

Cross-link [Fulton](../../../notes/fulton-intersection-theory-bridge.md).

## Computation checklist

For each substantial projective example record homogeneous coordinate ring, homogeneous ideal/generators, affine chart used for visualization, dimension/degree, Hilbert polynomial, singular/Jacobian data, free resolution when relevant, and the scheme-theoretic intersection ideal rather than only a point list.
