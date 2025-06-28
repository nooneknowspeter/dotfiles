{ config, pkgs, ... }:

{
  imports = [
    ./bottles
    ./brightnessctl
    ./cliphist
    ./eww
    ./fcitx5
    ./greetd
    ./hyprland
    ./imv
    ./linux-wallpaperengine
    ./mpv
    ./openrgb
    ./pipewire
    ./screenkey
    ./steam
    ./swaync
    ./uwsm
    ./virtualbox
    ./waybar
    ./wiremix
    ./wireplumber
    ./wofi
  ];
}
