# Agent contract: polynomial and variety catalog

## Goal

Catalog every explicit polynomial and every explicit variety, scheme, ideal, or system of equations in *Computations in Algebraic Geometry with Macaulay 2*.

Exhaustiveness is the acceptance criterion. Do not keep only representative examples.

Tracking:
- Eisenbud–Harris: https://github.com/walnut-burgundy/Eisenbud-Harris/issues/5
- AICI: https://github.com/isomorphisms/ai-ci/issues/182
- SURFER: https://github.com/isomorphismes/algebraic-variety-explorer-mobile
- upstream book tests: https://github.com/Macaulay2/M2/tree/stable/M2/Macaulay2/tests/ComputationsBook

## Polynomial invariant: exactly three sibling files

A polynomial is not a variety.

For every relevant polynomial P, put exactly three sibling files directly in this `varieties/` directory. Use the polynomial itself as the basename; do not use p0001-style IDs or per-entry directories.

Unicode mathematical notation is intentional. Prefer readable basenames such as `x⁴ − y⁵` and `y⁵ × x⁵ − x⁹ − y⁸ + y³ × x⁵`.

The three siblings are:

1. one primary render file, named `P.png`, `P.gif`, or `P.mp4`; while an actual SURFER render is pending, `P.render.txt` occupies this slot and contains the exact render recipe;
2. `P.source.txt`: provenance, exact machine spellings, and a `SURFER:` line;
3. `P.why.txt`: plain text explaining why the polynomial was mentioned.

The primary slot is exclusive. Never keep both `P.render.txt` and `P.png`.

Do not create `why.md`. Do not create a directory-level `WHY.md`.

## Source files

A polynomial source file records provenance, not interpretation. Include `Display:`, `SURFER:`, `Macaulay2:`, book/chapter/section/role, and upstream location. Add later occurrences instead of replacing the first one.

Machine syntax may use `*`; filenames and prose may use `×`.

## Variety records

A variety, scheme, ideal, union, intersection, saturation, projection, degeneration, or other composite object gets its own single `*.variety.txt` record. It does not replace component-polynomial records.

If the text discusses `A ∩ B ∩ C`, create a record for `A ∩ B ∩ C`. If A, B, and C are relevant component polynomials, each independently gets its own three-file polynomial bundle.

A variety record should state kind, construction, components, machine spelling when available, source, and why the construction matters.

Do not flatten a system into a product polynomial:

- `V(f) ∩ V(g) = V(f,g)`;
- `V(f × g) = V(f) ∪ V(g)`.

## Renders

Only an actual SURFER render may replace `P.render.txt` with an image or movie. Do not synthesize a lookalike with another renderer and call it SURFER.

`render-surfer.sh` drives SURFER's JVM preview renderer using the exact `SURFER:` expression from `P.source.txt`. The standard still is currently a deterministic 256×256 PNG.

## Mechanical checks

Run:

```
./validate.sh
./generate-readme.sh
```

`validate.sh` rejects the old `entries/` structure, Markdown why files, missing companions, and multiple primary render files.

`README.md` is generated. Do not hand-edit catalog rows.

## Exhaustive passes

Maintain `coverage.tsv`. Reconcile at least:

1. official book text in book order;
2. official table of contents/book site;
3. every upstream `chapter.m2`;
4. maintained `test.m2` and auxiliary `.m2` files;
5. prose, worked examples, and exercises for equations absent from code;
6. a second book-order pass whose only purpose is finding omissions.

A pass marked complete means the source was actually checked from beginning to end.
