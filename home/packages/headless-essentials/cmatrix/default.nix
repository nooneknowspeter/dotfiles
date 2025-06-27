{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    cmatrix
  ];

  # programs.cmatrix = {
  #   enable = true;
  # };

}
