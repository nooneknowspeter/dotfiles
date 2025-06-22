{ config, pkgs, ... }:

{

  imports = [
    # headless-essentials
    ./awk/awk.nix
    ./bat/bat.nix
    ./btop/btop.nix
    ./cbonsai/cbonsai.nix
    ./cmatrix/cmatrix.nix
    ./curl/curl.nix
    ./fastfetch/fastfetch.nix
    ./fd/fd.nix
    ./fzf/fzf.nix
    ./git/git.nix
    ./iftop/iftop.nix
    ./impala/impala.nix
    ./jq/jq.nix
    ./less/less.nix
    ./lsd/lsd.nix
    ./man/man.nix
    ./nix/nix.nix
    ./nvitop/nvitop.nix
    ./openssh/openssh.nix
    ./ripgrep/ripgrep.nix
    ./sed/sed.nix
    ./starship/starship.nix
    ./tldr/tldr.nix
    ./yazi/yazi.nix
    ./yq/yq.nix
    ./zsh/zsh.nix
  ];

}
