{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    savvycan
  ];

  # programs.savvycan = {
  #   enable = true;
  # };

}
