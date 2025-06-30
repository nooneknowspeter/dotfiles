{ config, pkgs, ... }:

{
  imports = [
    ./blueman
    ./bottles
    ./brightnessctl
    ./cava
    ./cliphist
    ./eww
    ./fcitx5
    ./greetd
    ./heroic
    ./hyprland
    ./imv
    ./linux-wallpaperengine
    ./lutris
    ./mangohud
    ./mpv
    ./openrazer
    ./openrgb
    ./pipewire
    ./protonup
    ./rofi
    ./scrcpy
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
