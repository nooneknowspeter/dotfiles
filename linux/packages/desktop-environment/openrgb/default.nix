{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    openrgb-with-all-plugins
  ];

}
