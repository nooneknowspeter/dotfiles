{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ uwsm ];

  home.file.".config/uwsm" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/uwsm";
  };

}
