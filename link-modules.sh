#!/bin/bash
# Replace each module folder in realm 2 with a symlink to the same module in realm 1.
# Safe to run again after cloning a new module into realm 1.
set -e

REALM1="${REALM1:-/root/azerothcore-wotlk}"
REALM2="${REALM2:-/root/azerothcore-realm2}"

cd "$REALM2/modules"
for d in "$REALM1"/modules/*/; do
    n=$(basename "$d")
    if [ -L "$n" ]; then
        echo "Already linked: $n"
        continue
    fi
    rm -rf "$n"
    ln -s "${d%/}" "$n"
    echo "Linked: $n -> ${d%/}"
done
