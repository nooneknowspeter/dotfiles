{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    mpv
  ];

  # programs.mpv = {
  #   enable = true;
  # };

}
