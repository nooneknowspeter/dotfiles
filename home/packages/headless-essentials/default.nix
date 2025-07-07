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
    ./direnv
    ./fastfetch
    ./fd
    ./fzf
    ./git
    ./gnumake
    ./gnused
    ./iftop
    ./impala
    ./jq
    ./killall
    ./lsd
    ./man
    ./nh
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
