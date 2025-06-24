{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    houdini
  ];

  # programs.houdini = {
  #   enable = true;
  # };

}
