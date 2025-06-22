{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    natron
  ];

  programs.natron = {
    enable = true;
  };

}
