{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    lutris
  ];

  programs.lutrix = {
    enable = true;
    steamPackage = pkgs.steam;
  };

}
