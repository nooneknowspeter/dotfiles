{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    linux-wallpaperengine
  ];

  programs.linux-wallpaperengine = {
    enable = true;
  };

}
