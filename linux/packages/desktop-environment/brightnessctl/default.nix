{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ brightnessctl ];

}
