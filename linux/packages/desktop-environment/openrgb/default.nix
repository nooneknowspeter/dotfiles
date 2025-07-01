{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ openrgb-with-all-plugins ];

  home.file.".config/OpenRGB" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/OpenRGB";
  };

}
