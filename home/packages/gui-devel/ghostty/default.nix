{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    ghostty
  ];

  programs.ghostty = {
    enable = true;
  };

  home.file.".config/ghostty" = {
    source = /home/nooneknows/dotfiles/home/packages/gui-devel/ghostty/ghostty;
  };

}
