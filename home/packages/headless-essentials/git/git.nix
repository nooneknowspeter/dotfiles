{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    git
  ];

  programs.git = {
    enable = true;
  };

  # home.file.".gitconfig" = {
  #   source = ./.gitconfig;
  #   recursive = false;
  # };

}
