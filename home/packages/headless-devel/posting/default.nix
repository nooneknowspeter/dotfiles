{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    posting
  ];

  home.file.".config/posting" = {
    source = /home/nooneknows/dotfiles/home/packages/headless-devel/posting/posting;
  };

}
