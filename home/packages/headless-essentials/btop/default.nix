{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    btop
  ];

  programs.btop = {
    enable = true;
  };

  home.file.".config/btop" = {
    source = /home/nooneknows/dotfiles/home/packages/headless-essentials/btop/btop;
  };

}
