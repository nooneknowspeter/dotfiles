{ config, pkgs, ... }:

{
  imports = [
    ./brightnessctl/brightnessctl.nix
    ./cliphist/cliphist.nix
    ./eww/eww.nix
    ./fcitx5/fcitx5.nix
    ./gbm/gbm.nix
    ./greetd/config.toml
    ./hyprland/hyprland.nix
    ./imv/imv.nix
    ./linux-wallpaperengine/linux-wallpaperengine.nix
    ./mpv/mpv.nix
    ./openrgb/openrgb.nix
    ./pipewire/pipewire.nix
    ./screenkey/screenkey.nix
    ./steam/steam.nix
    ./swaync/swaync.nix
    ./uwsm/uwsm.nix
    ./virtualbox/virtualbox.nix
    ./waybar/waybar.nix
    ./wiremix/wiremix.nix
    ./wireplumber/wireplumber.nix
    ./wofi/wofi.nix
    ./xdg-desktop-portal-hyprland/xdg-desktop-portal-hyprland.nix
  ];
}
