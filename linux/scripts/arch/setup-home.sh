#!/usr/bin/env bash

nix --extra-experimental-features "nix-command flakes" shell nixpkgs#home-manager -c home-manager --extra-experimental-features "nix-command flakes" switch --flake "${DOTFILES}"#nooneknows@linux-headless
