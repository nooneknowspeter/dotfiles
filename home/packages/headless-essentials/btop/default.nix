{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    btop
  ];

  programs.btop = {
    enable = true;
  };

  home.file.".config/btop" = {
    source = ./btop;
    recursive = true;
  };

}
