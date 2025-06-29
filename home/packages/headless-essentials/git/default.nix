{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    git
  ];

  programs.git = {
    enable = true;
  };

  home.file.".gitconfig" = {
    source = /home/nooneknows/dotfiles/home/packages/headless-essentials/git/.gitconfig;
  };

}
