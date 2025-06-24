{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    vim
  ];

  # programs.vim = {
  #   enable = true;
  # };

  # home.file.".vim" = {
  #   source = ./.vim;
  #   recursive = true;
  # };

}
