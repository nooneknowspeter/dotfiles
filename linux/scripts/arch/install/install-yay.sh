#!/usr/bin/env bash

if ! yay; then
  sudo pacman -Syyu --noconfirm

  sudo pacman -S --needed git base-devel --noconfirm

  git clone https://aur.archlinux.org/yay.git ~/yay

  cd ~/yay || return

  makepkg -si --noconfirm

  yay && echo $?
else
  echo "yay is installed"
fi
