{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ libnotify swaynotificationcenter gvfs ];

  home.file.".config/swaync" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/linux/packages/desktop-environment/swaync/elifouts";
  };

}
