{ config, pkgs, ... }:
{

  programs.wezterm = {
    enable = true;
  };

  home.file.".config/wezterm" = {
    source = /home/nooneknows/dotfiles/home/packages/gui-devel/wezterm/wezterm;
  };

}

