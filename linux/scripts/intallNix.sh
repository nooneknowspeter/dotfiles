#!/usr/bin/env bash

if ! nix; then
  sudo pacman -Syyu --noconfirm

  sudo pacman -S nix --noconfirm

  nix && echo $?
else
  echo "nix is installed"
fi
