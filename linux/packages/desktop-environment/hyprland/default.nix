{
  inputs,
  config,
  pkgs,
  ...
}:

{

  home.packages = with pkgs; [
    adwaita-qt
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
    kdePackages.qtwayland
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    pyprland
    qt6Packages.qt6ct
    wayland-utils
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    # set the flake package
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    plugins = [
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.csgo-vulkan-fix
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprbars
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprexpo
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprfocus
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprscrolling
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprtrails
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprwinwrap
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.xtra-dispatchers
    ];
    systemd = {
      enableXdgAutostart = true;
    };
    extraConfig = ''
      # main
      source = ~/dotfiles/configs/hypr/hyprland.conf
    '';
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
    ];
  };

  programs.hyprlock = {
    enable = true;
    extraConfig = ''
      background {
      	monitor =
      	path = screenshot
      	blur_passes = 3
      	contrast = 0.8916
      	brightness = 0.8172
      	vibrancy = 0.1696
      	vibrancy_darkness = 0.0
      }

      general {
      	no_fade_in = false
      	grace = 0
      	disable_loading_bar = false
      }

      label {
      	monitor =
      	text = cmd[update:1000] echo -e "$(date +"%A, %B %d")"
      	color = rgba(216, 222, 233, 0.70)
      	font_size = 25
      	font_family = SF Pro Display Bold
      	position = 0, 350
      	halign = center
      	valign = center
      }

      label {
      	monitor =
      	text = cmd[update:1000] echo "<span>$(date +"%I:%M")</span>"
      	color = rgba(216, 222, 233, 0.70)
      	font_size = 120
      	font_family = SF Pro Display Bold
      	position = 0, 250
      	halign = center
      	valign = center
      }
    '';
  };

  services.hypridle = {
    enable = true;
    settings = {
      general = {
        before_sleep_cmd = "hyprlock";
        after_sleep_cmd = "hyprctl dispatch dpms on";
        lock_cmd = "hyprlock";
      };
    };
  };

  services.hyprpolkitagent = {
    enable = true;
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

}
