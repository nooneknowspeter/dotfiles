{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ wofi ];

  home.file.".config/wofi" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/wofi";
  };

}
