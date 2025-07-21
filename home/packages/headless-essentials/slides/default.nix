{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ slides ];

  # programs.slides = {
  #   enable = true;
  # };

}
