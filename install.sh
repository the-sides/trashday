#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -P "$(dirname "$0")" && pwd)
[ "$(uname -s)" = Darwin ] || { echo 'trashday requires macOS.' >&2; exit 1; }
BIN="$HOME/.local/bin"
mkdir -p "$BIN"
[ ! -d "$BIN/trashday" ] || { echo "$BIN/trashday is a directory." >&2; exit 1; }
ln -sf "$ROOT/trashday" "$BIN/trashday"
echo "Installed $BIN/trashday. Keep this checkout in place and include ~/.local/bin in PATH."
