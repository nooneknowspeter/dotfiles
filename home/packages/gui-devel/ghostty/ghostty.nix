{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    ghostty
  ];

  programs.ghostty = {
    enable = true;
  };

  # home.file.".config/ghostty" = {
  #   source = ./ghostty;
  #   recursive = true;
  # };

}
