{ config, pkgs, ... }:

{
  imports = [
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
