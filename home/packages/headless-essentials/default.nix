{ config, pkgs, ... }: {

  imports = [
    # headless-essentials
    ./awk
    ./bat
    ./bitwarden-cli
    ./bluetui
    ./btop
    ./cbonsai
    ./cloc
    ./curl
    ./direnv
    ./eza
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
    ./man
    ./nh
    ./nvitop
    ./openssh
    ./pandoc
    ./ripgrep
    ./slides
    ./starship
    ./tldr
    ./tmux
    ./typst
    ./unimatrix
    ./vim
    ./yazi
    ./yq
    ./zsh
  ];

}
