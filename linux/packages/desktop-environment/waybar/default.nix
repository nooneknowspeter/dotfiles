{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    waybar
  ];

  home.file.".config/waybar" = {
    source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/linux/packages/desktop-environment/waybar/minimal;
  };

}
