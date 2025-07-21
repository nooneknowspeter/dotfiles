{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ lutris ];

  programs.lutris = {
    enable = true;
    steamPackage = pkgs.steam;
  };

}
