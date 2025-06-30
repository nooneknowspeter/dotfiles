{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ rofi ];

  home.file.".config/rofi" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/linux/packages/desktop-environment/rofi/hayyaoe";
  };

}
