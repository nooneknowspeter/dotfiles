{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    starship
  ];

  programs.starship = {
    enable = true;
  };

  home.file.".config/starship" = {
    source = ./starship;
    recursive = true;
  };

}
