# Agent contract: polynomial and variety catalog

## Goal

Catalog every explicit polynomial and every explicit variety, scheme, ideal, or system of equations in *Computations in Algebraic Geometry with Macaulay 2*.

Do not select only representative or famous examples. Exhaustiveness is the acceptance criterion.

Tracking:
- Eisenbud–Harris issue: https://github.com/walnut-burgundy/Eisenbud-Harris/issues/5
- AICI agent job: https://github.com/isomorphisms/ai-ci/issues/182
- SURFER: https://github.com/isomorphismes/algebraic-variety-explorer-mobile
- keyboard notation issue: https://github.com/isomorphisms/programmers-keyboard/issues/16
- upstream book tests: https://github.com/Macaulay2/M2/tree/stable/M2/Macaulay2/tests/ComputationsBook
- official book site: https://macaulay2.com/Book/

## Entry contract

Use stable ASCII directory IDs under `entries/`. Do not put the literal polynomial in a pathname: equations can contain slashes, spaces, Unicode, or enough text to make shell use unpleasant.

Every entry contains:

- `kind.txt`: `polynomial`, `variety`, `scheme`, `ideal`, or `system`.
- `equation.txt`: canonical human-facing mathematical name/equation.
- `macaulay2.txt`: exact runnable Macaulay2 spelling when one exists. Preserve upstream `*` here.
- `source.txt`: deterministic provenance only. Record book, chapter, section, example/equation/exercise label when available, and upstream source path/line when applicable. Add every later occurrence; do not replace the first citation.
- `why.md`: agent-written mathematical context. Explain why this object appears at this point, what question it answers or raises, what it illustrates or counters, and useful next questions.
- `components.txt` for composite objects: one catalog entry ID per defining component.
- `render.png`, `render.gif`, or `render.mp4` when SURFER can render the object.

## Components are first-class

If the book defines an object by

```
I = ideal(f, g, h)
```

catalog `I` and separately catalog `f`, `g`, and `h`.

If the book later intersects, unions, saturates, eliminates, projects, specializes, degenerates, or otherwise transforms objects, catalog the resulting object separately and link its inputs through `components.txt` or the provenance/context files.

Do not confuse union with intersection:

- `V(f) ∩ V(g) = V(f, g)`
- `V(f × g) = V(f) ∪ V(g)`

The first chapter of the book deliberately exercises this distinction at the ideal level.

## Mathematical display notation

Use Unicode mathematical notation in `equation.txt` and prose. When an explicit multiplication sign is useful, write `×`, not `*`.

Keep original machine syntax separately in `macaulay2.txt`; runnable Macaulay2 code must remain valid.

## README is generated

Run:

```
./generate-readme.sh
```

from this directory after any entry change.

Do not hand-edit generated catalog rows in `README.md`. Change entry files or the generator.

The README must expose missing renders rather than hiding them.

## Exhaustive passes

At minimum perform these independent sweeps and reconcile them:

1. official full book text/PDF in book order;
2. official table of contents/book site;
3. every upstream `chapter.m2`;
4. every maintained `test.m2` and chapter-specific auxiliary `.m2`;
5. prose, worked examples, and exercises for equations absent from code;
6. a second book-order pass whose sole purpose is finding omissions.

Update `coverage.tsv` as each pass completes. A pass marked complete means the source was actually checked from beginning to end.

Deduplicate mathematical objects only after preserving every occurrence in `source.txt`.

## Render rule

An atomic polynomial in three real variables should normally receive a SURFER render. If SURFER cannot directly represent a composite system or higher-dimensional object, say why in `why.md`; do not fake a surface by multiplying equations, because that changes an intersection into a union.

Prefer a reproducible rendering command/script over a manually produced image whenever SURFER exposes one.
