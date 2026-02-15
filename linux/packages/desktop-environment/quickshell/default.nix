{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ quickshell ];

  home.file.".config/quickshell" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/quickshell";
  };

}
