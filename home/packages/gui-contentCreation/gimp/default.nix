{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ gimp ];

  home.file.".config/GIMP/3.0" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/gimp/photogimp/.config/GIMP/3.0";
  };

}
