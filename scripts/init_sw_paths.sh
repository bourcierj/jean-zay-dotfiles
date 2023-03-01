#!/usr/bin/env bash
set -eu

## Initialize software paths

# move ~/bin and ~/.local dir to $WORK and make symbolic link
if [ -d "$HOME/bin" ] ; then
    mv "$HOME/bin" "$WORK"
else
    mkdir -p "$WORK/bin"
fi
ln -s "$WORK/bin" "$HOME"
if [ -d "$HOME/.local" ] ; then
    mv "$HOME/.local" "$WORK"
else
    mkdir -p "$WORK/.local"
fi
ln -s "$WORK/.local" "$HOME"
mkdir -p "$WORK/.local/bin"
