{ config, pkgs, ... }:
{

  imports = [
    # gui-essentials
    ./bitwarden-desktop
    ./brave
    ./discord
    ./f3d
    ./moonlight
    ./obs-studio
    ./obsidian
    ./tor-browser
    ./zathura
  ];

}
