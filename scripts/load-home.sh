#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles"
SECRETS="$HOME/dotfiles/secrets"
NOONEKNOWS="$HOME/nooneknows"
PROJECTS="$HOME/projects"
NOONEKNOWS_PROJECTS="$PROJECTS/nooneknowspeter"
PLAYGROUND="$HOME/playground"

if [ -d "$DOTFILES" ]; then
    echo "dotfiles dir found in $HOME"
fi

if [ -d "$HOME/secrets" ]; then
    echo "secrets dir in $HOME"
elif [ -h "$HOME/secrets" ]; then
    echo "secrets symbolic link in $HOME"
elif [ -d "$SECRETS" ] && [ ! -h "$HOME/secrets" ]; then
    echo -e "secrets dir found in $SECRETS\nsymlinking to $HOME\n"

    ln -s "$SECRETS" "$HOME/secrets"
fi

if [ -d "$NOONEKNOWS" ]; then
    echo "pkms dir found in $HOME"

    for dir in "$NOONEKNOWS"/*; do

        home_dir_path="$HOME"/"${dir##*/}"

        if [ -h "$home_dir_path" ]; then
            continue
        fi

        echo -e "found $dir\ncreating symlink to $HOME\n"

        ln -s "$dir" "$home_dir_path"
    done
fi

if [ ! -d "$PROJECTS" ]; then
    echo "creating projects dir in $HOME"

    mkdir -p "$PROJECTS"
else echo "projects dir found in $HOME"
fi

if [ ! -d "$NOONEKNOWS_PROJECTS" ]; then
    echo "creating noonekows project namespace in $PROJECTS"

    mkdir -p "$NOONEKNOWS_PROJECTS"
else echo "nooneknows project namespace found in $HOME"
fi

if [ ! -d "$PLAYGROUND" ]; then
    echo "creating playground dir in $HOME"

    mkdir -p "$PLAYGROUND"
else echo "playground dir found in $HOME"
fi
