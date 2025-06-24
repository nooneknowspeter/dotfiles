{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    cliphist
  ];

  # programs.cliphist = {
  #   enable = true;
  # };

}
