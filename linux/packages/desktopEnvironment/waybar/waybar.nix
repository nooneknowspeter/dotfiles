{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    waybar
  ];

  programs.waybar = {
    enable = true;
  };

  home.file."./config/waybar" = {
    source = ./waybar;
    recursive = true;
  };

}
