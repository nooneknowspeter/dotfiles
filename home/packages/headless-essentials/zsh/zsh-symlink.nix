{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    oh-my-zsh
    zsh
  ];

  programs.zsh = {
    enable = true;
  };

  home.file.".oh-my-zsh" = {
    source = ./zsh/.oh-my-zsh;
    recursive = true;
  };

  home.file.".zshrc" = {
    source = ./zsh/.zshrc;
    recursive = false;
  };

}
