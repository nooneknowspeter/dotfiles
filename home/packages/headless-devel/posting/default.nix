{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    posting
  ];

  home.file.".config/posting" = {
    source = ./posting;
    recursive = true;
  };

}
