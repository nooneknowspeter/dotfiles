{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wofi
  ];

  home.file.".config/wofi" = {
    source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/linux/packages/desktop-environment/wofi/minimal;
  };

}
