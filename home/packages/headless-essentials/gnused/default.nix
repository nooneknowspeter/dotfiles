{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    gnused
  ];

  # programs.gnused = {
  #   enable = true;
  # };

}
