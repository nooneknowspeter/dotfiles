{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    k9s
  ];

  programs.k9s = {
    enable = true;
  };

  home.file.".config/k9s" = {
    source = ./k9s;
    recursive = true;
  };

}
