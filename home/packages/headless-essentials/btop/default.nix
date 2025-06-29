{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    btop
  ];

  programs.btop = {
    enable = true;
  };

  home.file.".config/btop" = {
      source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/home/packages/headless-essentials/btop/btop;
  };

}
