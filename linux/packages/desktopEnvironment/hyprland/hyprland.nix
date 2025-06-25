{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    hypridle
    hyprland
    hyprland-protocols
    hyprlock
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprshot
    hyprsunset
    hyprsysteminfo
  ];

  home.file.".config/hypr" = {
    source = ./hypr;
    recursive = true;
  };

}
