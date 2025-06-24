#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles/"
INSTALL_YAY_SCRIPT="${DOTFILES}/linux/arch/scripts/installYay.sh"
INSTALL_NIX_SCRIPT="${DOTFILES}/linux/arch/scripts/installNix.sh"
NIX_HOME_MANAGER="${DOTFILES}/linux/scripts/home-manager.sh"

chmod +x "$INSTALL_YAY_SCRIPT"
chmod +x "$INSTALL_NIX_SCRIPT"
chmod +x "$NIX_HOME_MANAGER"

"$INSTALL_YAY_SCRIPT"
"$INSTALL_NIX_SCRIPT"

"$NIX_HOME_MANAGER"
