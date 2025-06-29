{ config, pkgs, ... }:
{

  programs.wezterm = {
    enable = true;
  };

  home.file.".config/wezterm" = {
    source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/home/packages/gui-devel/wezterm/wezterm;
  };

}

