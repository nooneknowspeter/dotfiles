{ config, pkgs, ... }:

{
  imports = [
    ./blueman
    ./bluez
    ./bottles
    ./brightnessctl
    ./cava
    ./cliphist
    ./fcitx5
    ./greetd
    # ./gvfs
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
    ./playerctl
    ./protonup
    ./rofi
    ./scope-tui
    ./scrcpy
    ./screenkey
    ./spotify
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
