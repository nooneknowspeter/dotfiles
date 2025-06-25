{ config, pkgs, ... }:

{

  imports = [
    # gui-essentials
    ./brave/brave.nix
    ./obsidian/obsidian.nix
    ./zathura/zathura.nix
  ];

}
