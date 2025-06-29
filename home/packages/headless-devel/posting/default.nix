{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    posting
  ];

  home.file.".config/posting" = {
    source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/home/packages/headless-devel/posting/posting;
  };

}
