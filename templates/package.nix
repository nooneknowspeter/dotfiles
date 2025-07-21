{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ ];

  programs.package = {
    enable = true;
  };

}
