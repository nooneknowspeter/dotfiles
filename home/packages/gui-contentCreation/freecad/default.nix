{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    freecad
  ];

  # programs.freecad = {
  #   enable = true;
  # };

}
