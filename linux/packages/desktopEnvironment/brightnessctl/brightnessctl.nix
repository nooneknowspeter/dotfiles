{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    brightnessctl
  ];

  programs.brightnessctl = {
    enable = true;
  };

}
