{ inputs, config, pkgs, ... }:

{

  home.packages = with pkgs; [
    hyprcursor
    hyprgraphics
    hypridle
    hyprland-protocols
    hyprland-qtutils
    hyprlock
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprshot
    hyprsunset
    hyprsysteminfo
    hyprutils
    hyprwayland-scanner
    pyprland
    wayland-utils
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    # set the flake package
    package =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    plugins = [
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.csgo-vulkan-fix
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprbars
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprexpo
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprfocus
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprscrolling
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprtrails
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprwinwrap
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.xtra-dispatchers
    ];
    extraConfig = ''
      # main
      source = ~/dotfiles/linux/packages/desktop-environment/hyprland/hypr/main.conf
    '';
  };

  # home.file.".config/hypr" = {
  #   source = config.lib.file.mkOutOfStoreSymlink
  #     "${config.home.homeDirectory}/dotfiles/linux/packages/desktop-environment/hyprland/hypr";
  # };
}
