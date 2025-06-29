{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    starship
  ];

  programs.starship = {
    enable = true;
  };

  home.file.".config/starship" = {
    source = /home/nooneknows/dotfiles/home/packages/headless-essentials/starship/starship;
  };

}
