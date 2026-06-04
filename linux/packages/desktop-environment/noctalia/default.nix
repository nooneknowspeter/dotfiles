{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    noctalia-shell
    noctalia-qs
  ];

  home.file.".config/noctalia" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/noctalia";
  };

}
