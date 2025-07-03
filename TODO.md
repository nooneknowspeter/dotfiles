# TODO

## General

- [x] move dot configs into a top-level folder in repo (easier access)
- [ ] merge into main, tag 2.0.0
- [x] setup CI/CD pipeline; formating and linting code, commit `style (ci/cd): nixfmt`
- [ ] set old submodules as archives or delete; [zsh submodule](https://github.com/nooneknowspeter/zsh), [tmux submodule](https://github.com/nooneknowspeter/tmux)

## Automate with Nix

- [x] make configurations for each environment in [flake.nix](./flake.nix)
    - [x] architecture
    - [x] kernel
    - [x] distro/OS
    - [x] purpose

- [x] nvim
    - [x] init submodule
    - [x] reference git protocol in URI
    - [ ] setup branch for minimal config; nvim on windows
    - [ ] reconfigure nvim lsp; agnositic lsp setup (mason and nix)
    - [ ] ditto with dap

- [x] home-manager
    - [x] properly setup xdg config in home-manager; user dirs (Downloads, Pictures)
    - [x] properly setup xdg mime; default applications

- [ ] arch setup
    - [ ] test out home manager setup on arch machine
    - [ ] bootstrap desktop environment
    - [ ] nixgl

- [x] nix-on-droid
    - [x] test out home manager setup

- [ ] create modules for flake.nix outputs
    - [ ] clean up flake.nix
    - [ ] home-manager configs
    - [ ] nixos configs
    - [ ] darwin configs
    - [ ] nix-on-droid configs

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
