#!/bin/sh
set -eu

here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
surfer=${1:-${SURFER_DIR:-}}

if [ -z "$surfer" ] || [ ! -x "$surfer/build.sh" ]; then
    printf 'render-surfer: pass a SURFER checkout containing executable build.sh\n' >&2
    exit 2
fi

work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT HUP INT TERM

for source in "$here"/*.source.txt
do
    [ -e "$source" ] || continue
    base=${source%.source.txt}
    formula=$(sed -n 's/^SURFER: //p' "$source" | head -n 1)
    [ -n "$formula" ] || {
        printf 'render-surfer: missing SURFER expression in %s\n' "$source" >&2
        exit 1
    }

    [ "$formula" = unavailable ] && continue
    [ -f "$base.render.txt" ] || continue
    grep -q '^status: pending actual SURFER render$' "$base.render.txt" || continue

    ppm="$work/render.ppm"
    "$surfer/build.sh" preview "$ppm" "$formula"
    python3 "$here/ppm-to-png.py" "$ppm" "$base.png"
    rm -f -- "$base.render.txt"
done

"$here/validate.sh"
"$here/generate-readme.sh"
