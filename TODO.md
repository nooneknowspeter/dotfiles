# TODO

## General

- [x] move dot configs into a top-level folder in repo (easier access)
- [x] merge into main, tag 2.0.0
- [x] setup CI/CD pipeline; formating and linting code, commit `style (ci/cd): nixfmt`
- [x] set old submodules as archives or delete; [zsh submodule](https://github.com/nooneknowspeter/zsh), [tmux submodule](https://github.com/nooneknowspeter/tmux)

## Automate with Nix

- [x] make configurations for each environment in [flake.nix](./flake.nix)

  - [x] architecture
  - [x] kernel
  - [x] distro/OS
  - [x] purpose

- [x] nvim

  - [x] init submodule
  - [x] reference git protocol in URI
  - [x] setup branch for minimal config; nvim on windows
  - [ ] reconfigure nvim lsp; agnositic lsp setup (mason and nix)
  - [ ] ditto with dap
  - [ ] ditto with formmatting
  - [ ] ditto with linting

- [x] home-manager

  - [x] properly setup xdg config in home-manager; user dirs (Downloads, Pictures)
  - [x] properly setup xdg mime; default applications

- [ ] arch setup

  - [x] test out home manager setup on arch machine
  - [x] headless environment
  - [x] bootstrap desktop environment
  - [ ] nixgl

- [ ] wsl setup

  - [ ] nixos wslg setup
  - [ ] arch wslg and home manager setup

- [x] nix-on-droid

  - [x] test out home manager setup

- [x] create modules for flake.nix outputs

  - [x] clean up flake.nix
  - [x] home-manager configs
  - [x] nixos configs
  - [x] darwin configs
  - [x] nix-on-droid configs

## Windows

- [x] clean up windows powershell scripts
- [x] move windows package configs into their respective places

## Dev

- [ ] ghostty

  - [x] configure ghostty; after 1.2 release
  - [ ] fix:

  ```sh
  /nix/store/7maggaslszrp9an7iv6cjbzmk177v629-ghostty-1.1.4/share/ghostty/shell-integration/zsh/ghostty-integration:142: defining function based on alias `sudo'
  /nix/store/7maggaslszrp9an7iv6cjbzmk177v629-ghostty-1.1.4/share/ghostty/shell-integration/zsh/ghostty-integration:226: parse error near `()'
  ```

  ![ghostty issue](https://i.imgur.com/bLFGKFV.png)

## Documentation

- [x] update README.md

  - [x] add relevant commands
  - [x] explain code structure and design, philosphy
  - [x] screenshots

- [x] update repo description
