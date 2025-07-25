{ config, pkgs, ... }:
{

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
    ./cyme
    ./direnv
    ./duf
    ./dust
    ./eza
    ./fastfetch
    ./fd
    ./fzf
    ./git
    ./gnumake
    ./gnused
    ./hyperfine
    ./iftop
    ./impala
    ./jq
    ./killall
    ./libimobiledevice
    ./man
    ./nettools
    ./nh
    ./nvitop
    ./openssh
    ./pandoc
    ./ripgrep
    ./slides
    ./starship
    ./tldr
    ./tmux
    ./ncurses
    ./typst
    ./unimatrix
    ./unp
    ./vim
    ./yazi
    ./yq
    ./zsh
  ];

}
