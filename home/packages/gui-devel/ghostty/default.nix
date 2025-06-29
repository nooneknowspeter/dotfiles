{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    ghostty
  ];

  programs.ghostty = {
    enable = true;
  };

  home.file.".config/ghostty" = {
    source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/home/packages/gui-devel/ghostty/ghostty;
  };

}
