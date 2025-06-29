{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    yq
  ];

  # programs.yq = {
  #   enable = true;
  # };

}
