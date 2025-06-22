#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles/"
INSTALL_YAY_SCRIPT="${DOTFILES}/linux/arch/scripts/installYay.sh"
INSTALL_NIX_SCRIPT="${DOTFILES}/linux/arch/scripts/installNix.sh"

chmod +x "${INSTALL_YAY_SCRIPT}"
chmod +x "${INSTALL_NIX_SCRIPT}"

$INSTALL_YAY_SCRIPT
$INSTALL_NIX_SCRIPT

export NIX_CONFIG="experimental-features = nix-command flakes"

nix shell nixpkgs#home-manager

home-manager switch --flake .
