{ config, pkgs, ... }:
{

  programs.wezterm = {
    enable = true;
  };

  home.file.".config/wezterm" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/wezterm";
  };

}
