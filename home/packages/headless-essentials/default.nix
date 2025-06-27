{ config, pkgs, ... }:

{

  imports = [
    # headless-essentials
    ./awk
    ./bat
    ./btop
    ./cbonsai
    ./cmatrix
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
    ./yazi
    ./yq
    ./zsh
  ];

}
