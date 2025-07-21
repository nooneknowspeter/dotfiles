{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ starship ];

  programs.starship = {
    enable = true;
  };

  home.file.".config/starship" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/starship";
  };

}
