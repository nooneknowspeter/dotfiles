# dotfiles

My dotfiles utilizing the [Nix ecosystem](https://nixos.org).
Fully modular and reproducible dotfiles and system configuration for multiple operating systems and environments.
Infrastructure and system configuration as code, I can be on whatever, whenever and however.

## Overview

This setup uses:

- [Nix Flakes](https://nixos.wiki/wiki/Flakes): for reproducible and composable configurations.
- [Home Manager](https://nix-community.github.io/home-manager/): to manage user environments across platforms.
- [NixOS](https://nixos.org): declarative system configuration.
- [nix-darwin](https://github.com/LnL7/nix-darwin): Nix-based macOS system configuration.
- [nix-on-droid](https://github.com/t184256/nix-on-droid): Nix on Android's Termux.
- [WSL](https://learn.microsoft.com/en-us/windows/wsl/) integration (both NixOS and Arch-based environments).
- Traditional imperative distros (primarily [Arch Linux](https://archlinux.org/))via bootstrapping scripts.

