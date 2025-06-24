{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    openrgb-with-all-plugins
  ];

  # programs.openrgb-will-all-plugins = {
  #   enable = true;
  # };

}
