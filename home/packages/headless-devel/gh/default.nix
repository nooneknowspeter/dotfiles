{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ gh ];

  programs.gh = {
    enable = true;
    extensions = with pkgs; [ gh-skyline ];
  };

}
