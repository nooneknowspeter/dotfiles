#!/usr/bin/env bash

if ! curl; then
  sudo pacman -S curl --noconfirm
else
  echo "curl is installed"
fi
