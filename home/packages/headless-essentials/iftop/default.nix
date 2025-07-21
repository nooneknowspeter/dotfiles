{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ iftop ];

  # programs.iftop = {
  #   enable = true;
  # };

}
