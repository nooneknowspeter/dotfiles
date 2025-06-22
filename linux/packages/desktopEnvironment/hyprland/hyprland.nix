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

  programs.hypridle = {
    enable = true;
  };

  programs.hyprland = {
    enable = true;
  };

  programs.hyprland-protocols = {
    enable = true;
  };

  programs.hyprlock = {
    enable = true;
  };

  programs.hyprpaper = {
    enable = true;
  };

  programs.hyprpicker = {
    enable = true;
  };

  programs.hyprpolkitagent = {
    enable = true;
  };

  programs.hyprshot = {
    enable = true;
  };

  programs.hyprsunset = {
    enable = true;
  };

  programs.hyprsysteminfo = {
    enable = true;
  };

  home.file.".config/hypr" = {
    source = ./hypr;
    recursive = true;
  };

}
