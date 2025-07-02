{ config, lib, pkgs, ... }: {

  imports = [
    ./dconf
    # ./hyprland 
    ./nix-ld
    ./steam
    ./zsh
  ];

}
