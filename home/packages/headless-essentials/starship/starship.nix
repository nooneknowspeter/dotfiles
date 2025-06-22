{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    starship
  ];

  programs.starship = {
    enable = true;
  };

  home.file.".config/starship" = {
    soruce = ./starship;
    recursive = true;
  };

}
