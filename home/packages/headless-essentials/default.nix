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
    ./lazyjournal
    ./libimobiledevice
    ./man
    ./mtpfs
    ./ncurses
    ./nettools
    ./nh
    ./nvitop
    ./openssh
    ./pandoc
    ./pipes
    ./qalculate
    ./ripgrep
    ./slides
    ./spotdl
    ./starship
    ./termusic
    ./tldr
    ./tmux
    ./typst
    ./unimatrix
    ./unp
    ./vim
    ./yazi
    ./yq
    ./zsh
  ];

}
