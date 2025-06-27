{ config, lib, pkgs, ... }:

{

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.zsh.enable = true;
}
