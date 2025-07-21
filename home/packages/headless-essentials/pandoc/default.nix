{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ pandoc ];

  # programs.pandoc = {
  #   enable = true;
  # };

}
