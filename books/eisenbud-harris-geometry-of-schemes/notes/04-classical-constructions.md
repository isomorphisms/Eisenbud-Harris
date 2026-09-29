# IV. Classical constructions

This chapter tests scheme machinery on familiar geometric constructions without losing degenerations or multiplicities.

## Flexes and special-contact loci

A flex condition is not merely a predicate on ordinary points. Scheme structure can record multiplicity and what happens when special points collide in a family.

For a plane curve, keep separate the curve equation, derivatives or auxiliary equations used to detect special contact, the scheme cut out by combined conditions, and the reduced visible support.

An explicit auxiliary polynomial deserves its own polynomial record.

## Blow-ups

A blow-up replaces a center with data recording limiting directions. For an affine scheme and ideal `I`:

`Bl_I X = Proj(⊕_{n≥0} I^n)`.

This connects ideals, graded algebras, and Proj. It also explains why a blow-up is not merely “zooming in.”

For an example, record the center ideal, Rees algebra or chart equations, exceptional divisor, affine charts, transform of the original subvariety, and singularities before/after.

Charts often yield ordinary polynomial equations suited to SURFER. Name the chart and distinguish exceptional divisor, strict transform, and total transform.

## Degenerations

Classical constructions become more informative when the input degenerates: smooth quadrics to cones, configurations of lines to repeated components, or smooth surfaces to singular ones.

Track the total family and special fiber scheme-theoretically. Do not replace a limit by a naive set limit.

## Fano schemes

Instead of studying lines one at a time on a variety, form a parameter scheme whose points represent lines contained in it:

geometry on X
→ incidence condition in a Grassmannian
→ equations defining a parameter scheme.

The same move reappears in Hilbert schemes and moduli.

## Computational provenance

Many constructions produce new equations from old ones: minors, incidence conditions, transforms, discriminants, or elimination ideals.

Preserve:

source object
→ deterministic algebraic operation
→ resulting polynomial/system
→ optional render.

That provenance chain belongs in the shared polynomial/variety catalog rather than a gallery of disconnected surfaces.
