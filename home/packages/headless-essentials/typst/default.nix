{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ typst ];

  # programs.typst = {
  #   enable = true;
  # };

}
