{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wofi
  ];

  programs.wofi = {
    enable = true;
  };

  home.file."./config/wofi" = {
    source = ./wofi;
    recursive = true;
  };

}
