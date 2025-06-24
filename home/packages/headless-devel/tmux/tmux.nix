{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    tmux
  ];

  # programs.tmux = {
  #   enable = true;
  # };

  # home.file.".tmux.conf" = {
  #   source = ./tmux/.tmux.conf;
  #   recursive = false;
  # };

  # home.file.".tmux" = {
  #   source = ./tmux/.tmux;
  #   recursive = true;
  # };

}
