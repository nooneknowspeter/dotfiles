#!/usr/bin/env nix-shell
#!nix-shell -i bash -p tree

if [ "$#" -lt 1 ]; then
    echo "list.sh <PATH>"
    exit 1
fi

for arg in "$@"; do
    tree -d "$arg"
done
