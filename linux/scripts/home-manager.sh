#!/usr/bin/env bash

USERNAME=""
CONFIG=""
ENABLE_EXPERIMENTAL='--extra-experimental-features "nix-command flakes"'

echo "Username: "
read -r USERNAME

echo "Config: "
read -r CONFIG

nix "${ENABLE_EXPERIMENTAL}" shell nixpkgs#home-manager

home-manager "${ENABLE_EXPERIMENTAL}" switch --flake .#"${USERNAME}"@"${CONFIG}"
