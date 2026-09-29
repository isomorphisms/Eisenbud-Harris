# Computation and visualization hooks

Make scheme theory executable where computation adds information, without pretending a renderer can display every scheme-theoretic feature.

## Shared catalog

Concrete polynomials belong in:

[`../../computations-with-macaulay2/varieties/`](../../computations-with-macaulay2/varieties/)

The catalog enforces exactly three files per polynomial: actual SURFER render, provenance, and why the polynomial was mentioned. Composite varieties/schemes remain separate records from component polynomials.

## What SURFER can usefully show

Good targets include a real affine hypersurface, one affine chart of a projective variety, reduced support, tangent cone, singular hypersurface and nearby smooth family members, visible components of a union, and selected members of a deformation family.

Every link should state the chosen realization.

## What SURFER cannot show by itself

A surface image does not directly display nilpotent structure, embedded associated points, scheme-theoretic multiplicity, residue fields, nontrivial gluing across charts, flatness, functor-of-points behavior, a Hilbert polynomial, or a free resolution.

Attach the relevant algebraic record instead of encoding those ideas with visual decoration.

## Deterministic experiment patterns

### Reduced versus nonreduced

Given `I`, compute `rad I`. Render the common support if low-dimensional; keep both ideals beside the image.

### Tangent space and tangent cone

Compute the Jacobian at a chosen point. Record tangent-space equations. Extract lowest-degree local terms for the tangent cone and render the cone when possible.

### Family through a singular fiber

For `F(x,y,z;t)`, choose a deterministic list of parameter values around the singular value. Render each actual polynomial and keep one family record linking the members.

### Intersection

For `V(I) ∩ V(J)`, compute `I+J`. Never create a product polynomial to imitate the intersection; products encode unions for hypersurfaces.

### Resultant/discriminant

Keep source polynomials, derived resultant/discriminant, and elimination recipe. Render representative fibers chosen from parameter regions determined by the derived polynomial.

### Blow-up charts

Derive chart equations from the Rees/Proj construction. Catalog each chart polynomial with provenance pointing back to the common blow-up object.

## Receipts

A useful computation should leave enough information to repeat it:

input ring
→ input ideals/polynomials
→ deterministic algebraic operation
→ exact output
→ optional SURFER formula/camera preset
→ source section.

AICI should validate these receipts rather than rely on an agent's memory of what was supposedly computed.
