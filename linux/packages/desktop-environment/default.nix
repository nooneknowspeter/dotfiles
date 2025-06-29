{ config, pkgs, ... }:

{
  imports = [
    ./bottles
    ./brightnessctl
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
