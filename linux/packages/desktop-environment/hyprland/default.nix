{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    hyprland

    hyprcursor
    hypridle
    hyprland-protocols
    hyprland-qtutils
    hyprlock
    hyprpanel
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprshot
    hyprsunset
    hyprsysteminfo

    hyprlandPlugins.borders-plus-plus
    hyprlandPlugins.csgo-vulkan-fix
    hyprlandPlugins.hypr-dynamic-cursors
    hyprlandPlugins.hyprtrails
    hyprlandPlugins.hyprwinwrap
    xdg-desktop-portal-hyprland
  ];

  # wayland.windowManager.hyprland = {
  #   # Whether to enable Hyprland wayland compositor
  #   enable = true;
  #   # The hyprland package to use
  #   package = pkgs.hyprland;
  #   # Whether to enable XWayland
  #   xwayland.enable = true;

  #   plugins = with pkgs; [
  #     xdg-desktop-portal-hyprland
  #     hyprlandPlugins.csgo-vulkan-fix
  #     hyprlandPlugins.borders-plus-plus
  #     hyprlandPlugins.hypr-dynamic-cursors
  #     hyprlandPlugins.hyprtrails
  #     hyprlandPlugins.hyprwinwrap
  #   ];

  #   systemd = {
  #     enable = true;
  #     enableXdgAutostart = true;
  #     variables = ["--all"];
  #   };
  # };

  services.hyprpaper.enable = true;

  home.file.".config/hypr" = {
    source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/linux/packages/desktop-environment/hyprland/hypr;
  };

}
