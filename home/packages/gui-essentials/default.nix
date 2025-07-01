{ config, pkgs, ... }: {

  imports = [
    # gui-essentials
    ./bitwarden-desktop
    ./brave
    ./discord
    ./obs-studio
    ./obsidian
    ./zathura
  ];

}
