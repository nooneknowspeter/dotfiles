{ config, pkgs, ... }:

{

  imports = [
    # headless-devel
    ./asdf-vm/asdf-vm.nix
    ./can-utils/can-utils.nix
    ./docker/docker.nix
    ./gh/gh.nix
    ./glab/glab.nix
    ./ipcalc/ipcalc.nix
    ./k9s/k9s.nix
    ./lazydocker/lazydocker.nix
    ./lazygit/lazygit.nix
    ./lazysql/lazysql.nix
    ./neovim/neovim.nix
    ./pandoc/pandoc.nix
    ./posting/posting.nix
    ./qemu/qemu.nix
    ./slides/slides.nix
    ./termshark/termshark.nix
    ./tmux/tmux.nix
    ./typst/typst.nix
    ./vim/vim.nix
  ];

}
