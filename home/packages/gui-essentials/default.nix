{ config, pkgs, ... }: {

  imports = [
    # gui-essentials
    ./bitwarden-desktop
    ./brave
    ./discord
    ./moonlight
    ./obs-studio
    ./obsidian
    ./zathura
  ];

}
