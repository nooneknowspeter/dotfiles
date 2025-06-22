{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    neovim
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
  };

}
