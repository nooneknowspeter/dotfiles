#!/usr/bin/env bash

if ! zsh; then
  sudo pacman -S zsh --noconfirm

  chsh -s /usr/bin/zsh
else
  echo "zsh is installed"
fi
