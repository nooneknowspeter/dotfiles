{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ eww ];

  home.file.".config/eww" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/linux/packages/desktop-environment/eww/hayyaoe";
  };

}
