{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ blender ];

  # programs.blender = {
  #   enable = true;
  # };

}
