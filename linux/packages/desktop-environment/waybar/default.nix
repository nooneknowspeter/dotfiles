{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ waybar ];

  home.file.".config/waybar" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/waybar";
  };

}
