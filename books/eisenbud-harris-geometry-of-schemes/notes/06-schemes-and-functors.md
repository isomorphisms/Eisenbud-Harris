# VI. Schemes and functors

The functor-of-points viewpoint turns a scheme into its behavior against every test scheme. Field-valued points form only one class of probes.

## Functor of points

Associate to `X` the contravariant functor

`h_X(T) = Hom(T, X)`.

A morphism `X → Y` induces a natural transformation `h_X → h_Y`. Yoneda says this functor remembers the scheme.

Nonreduced test schemes expose infinitesimal information invisible to ordinary point sets.

## Dual numbers and tangent vectors

Maps from `Spec k[ε]/(ε²)` reducing to a fixed point encode tangent vectors.

Keep both descriptions:

- algebra/Jacobian computation;
- maps from an infinitesimal test scheme.

Agreement between them makes a useful executable check.

## Open and closed subfunctors

Subschemes can be characterized functorially by conditions on maps from test schemes. This becomes important for parameter spaces because it states the classification problem before a representing scheme has been constructed.

## Group schemes

A group scheme is a group object in schemes. The functor of points turns each test scheme `T` into an ordinary group `G(T)`, including infinitesimal group elements over nonreduced tests.

## Parameter spaces

Use the pattern:

1. define a parameter/moduli functor;
2. ask whether a scheme represents it;
3. if not, identify the obstruction or weaker object.

Grassmannians and Hilbert schemes provide central representable examples.

## Hilbert schemes

A Hilbert scheme parameterizes projective subschemes with fixed Hilbert polynomial under suitable hypotheses.

graded ideals
→ Hilbert polynomial
→ flat families
→ parameter functor
→ Hilbert scheme.

## Tangent spaces to parameter schemes

A tangent vector to a Hilbert or Fano scheme represents a first-order deformation of the corresponding subobject. Nilpotent test schemes literally encode infinitesimal motion in parameter space.

## Moduli

Do not collapse “set of isomorphism classes” and “moduli functor.” Family data over arbitrary bases is part of the problem, and automorphisms can obstruct a naive representing scheme.

## Computational hooks

For concrete parameter problems, write incidence equations, identify the ambient Grassmannian/projective space, compute tangent-space dimensions, test first-order deformations with dual numbers, compare special/generic fibers, and render representative objects rather than pretending a render of one object is a picture of the moduli problem.
