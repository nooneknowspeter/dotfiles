{ config, pkgs, ... }:

{

  imports = [
    # headless-essentials
    ./awk
    ./bat
    ./bitwarden-cli
    ./btop
    ./cbonsai
    ./curl
    ./fastfetch
    ./fd
    ./fzf
    ./git
    ./gnused
    ./iftop
    ./impala
    ./jq
    ./killall
    ./less
    ./lsd
    ./man
    ./nix
    ./nvitop
    ./openssh
    ./ripgrep
    ./starship
    ./tldr
    ./tmux
    ./unimatrix
    ./vim
    ./yazi
    ./yq
    ./zsh
  ];

}
