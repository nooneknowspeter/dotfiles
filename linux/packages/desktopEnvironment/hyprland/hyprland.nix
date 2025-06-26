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

  wayland.windowManager.hyprland = {
    # Whether to enable Hyprland wayland compositor
    enable = true;
    # The hyprland package to use
    package = pkgs.hyprland;
    # Whether to enable XWayland
    xwayland.enable = true;

    systemd = {
      enable = true;
      enableXdgAutostart = true;
    };
  };

  home.file.".config/hypr" = {
    source = ./hypr;
    recursive = true;
  };

}
