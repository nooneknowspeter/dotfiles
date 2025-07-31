{
  inputs,
  config,
  pkgs,
  ...
}:

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
    kdePackages.qtwayland
    pyprland
    wayland-utils
    xdg-desktop-portal
    xdg-desktop-portal-gtk
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
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprtrails
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
    ];
  };

  programs.hyprlock = {
    enable = true;
    extraConfig = ''
      # BACKGROUND
      background {
          monitor =
          path = screenshot
          blur_passes = 3
          contrast = 0.8916
          brightness = 0.8172
          vibrancy = 0.1696
          vibrancy_darkness = 0.0
      }

      # GENERAL
      general {
          no_fade_in = false
          grace = 0
          disable_loading_bar = false
      }

      # Day-Month-Date
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

      # Time
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

      # # USER-BOX
      # shape {
      #     monitor =
      #     size = 300, 60
      #     color = rgba(255, 255, 255, .1)
      #     rounding = -1
      #     border_size = 0
      #     border_color = rgba(253, 198, 135, 0)
      #     rotate = 0
      #     xray = false # if true, make a "hole" in the background (rectangle of specified size, no rotation)
      #
      #     position = 0, -130
      #     halign = center
      #     valign = center
      # }

      # # USER
      # label {
      #     monitor =
      #     text =     $USER
      #     color = rgba(216, 222, 233, 0.80)
      #     outline_thickness = 2
      #     dots_size = 0.2 # Scale of input-field height, 0.2 - 0.8
      #     dots_spacing = 0.2 # Scale of dots' absolute size, 0.0 - 1.0
      #     dots_center = true
      #     font_size = 18
      #     font_family = SF Pro Display Bold
      #     position = 0, -130
      #     halign = center
      #     valign = center
      # }

      # # INPUT FIELD
      # input-field {
      #     monitor =
      #     size = 300, 60
      #     outline_thickness = 2
      #     dots_size = 0.2 # Scale of input-field height, 0.2 - 0.8
      #     dots_spacing = 0.2 # Scale of dots' absolute size, 0.0 - 1.0
      #     dots_center = true
      #     outer_color = rgba(0, 0, 0, 0)
      #     inner_color = rgba(255, 255, 255, 0.1)
      #     font_color = rgb(200, 200, 200)
      #     fade_on_empty = false
      #     font_family = FiraCode Nerd Font
      #     placeholder_text = <i><span foreground="##ffffff99"> Enter Pass</span></i>
      #     hide_input = false
      #     position = 0, -210
      #     halign = center
      #     valign = center
      # }
    '';
  };

  # home.file.".config/hypr" = {
  #   source = config.lib.file.mkOutOfStoreSymlink
  #     "${config.home.homeDirectory}/dotfiles/configs/hypr";
  # };
  services.hypridle = {
    enable = true;
  };
}
