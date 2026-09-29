#!/bin/sh
set -eu

here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
failed=0

fail()
{
    printf 'catalog: %s\n' "$*" >&2
    failed=1
}

if [ -d "$here/entries" ]; then
    fail "obsolete entries/ directory exists"
fi

if find "$here" -maxdepth 2 -type f \( -name 'why.md' -o -name 'WHY.md' \) | grep . >/dev/null; then
    fail "Markdown why files are forbidden; use P.why.txt"
fi

for source in "$here"/*.source.txt
do
    [ -e "$source" ] || continue
    base=${source%.source.txt}
    name=${base##*/}
    why="$base.why.txt"

    [ -f "$why" ] || fail "$name is missing $name.why.txt"

    grep -q '^Display: ' "$source" || fail "$name source is missing Display:"
    grep -q '^SURFER: ' "$source" || fail "$name source is missing SURFER:"
    grep -q '^Macaulay2: ' "$source" || fail "$name source is missing Macaulay2:"

    count=0
    for ext in render.txt png gif mp4
    do
        [ -f "$base.$ext" ] && count=$((count + 1))
    done
    [ "$count" -eq 1 ] || fail "$name must have exactly one primary render slot, found $count"

    if [ -f "$base.render.txt" ]; then
        grep -q '^status: pending actual SURFER render$' "$base.render.txt" ||
            fail "$name pending render does not identify itself as pending"
    fi
done

[ "$failed" -eq 0 ]
