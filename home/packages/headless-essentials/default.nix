{ config, pkgs, ... }: {

  imports = [
    # headless-essentials
    ./awk
    ./bat
    ./bitwarden-cli
    ./bluetui
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
    ./nh
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
