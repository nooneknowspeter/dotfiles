{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    waybar
  ];

  home.file.".config/waybar" = {
    source = ./minimal;
    recursive = true;
  };

}
