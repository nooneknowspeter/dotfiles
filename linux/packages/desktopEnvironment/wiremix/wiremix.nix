{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wiremix
  ];

  programs.wiremix = {
    enable = true;
  };

}
