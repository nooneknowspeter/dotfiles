{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    swaync
  ];

  programs.swaync = {
    enable = true;
  };

}
