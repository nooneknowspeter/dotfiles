{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    xdg-desktop-portal-hyprland
  ];

  # programs.xdg-desktop-portal-hyprland = {
  #   enable = true;
  # };

}
