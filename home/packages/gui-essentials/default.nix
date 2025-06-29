{ config, pkgs, ... }:
{

  imports = [
    # gui-essentials
    ./bitwarden-desktop
    ./brave
    ./discord
    ./obsidian
    ./zathura
  ];

}
