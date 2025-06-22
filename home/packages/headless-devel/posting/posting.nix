{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    posting
  ];

  programs.posting = {
    enable = true;
  };

  home.file.".config/posting" = {
    source = ./posting;
    recursive = true;
  };

}
