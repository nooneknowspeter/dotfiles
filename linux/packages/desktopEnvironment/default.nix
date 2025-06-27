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
    ./mangohud
    ./mpv
    ./openrgb
    ./piper
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
