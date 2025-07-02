# TODO

## General

- [x] move dot configs into a top-level folder in repo (easier access)

## Automate with Nix

- [x] make configurations for each environment in [flake.nix](./flake.nix)
    - [x] architecture
    - [x] kernel
    - [x] distro/OS
    - [x] purpose

- [x] nvim
    - [x] init submodule
    - [x] reference git protocol in URI

- [ ] home-manager
    - [ ] properly setup xdg config in home-manager; user dirs (Downloads, Pictures)
    - [ ] properly setup xdg mime; default applications

- [ ] arch setup
    - [ ] test out home manager setup on arch machine
    - [ ] bootstrap desktop environment
    - [ ] nixgl

- [x] nix-on-droid
    - [x] test out home manager setup

- [ ] create modules for flake.nix outputs
    - [ ] home-manager configs
    - [ ] nixos configs
    - [ ] darwin configs
    - [ ] nix-on-droid configs

## Dev
- [x] configure ghostty; after 1.2 release

## Documentation

- [ ] update README.md
    - [ ] add relevant commands
    - [ ] explain code structure and design, philosphy
    - [ ] screenshots
- [ ] update repo description
