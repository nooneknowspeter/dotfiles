{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wofi
  ];

  home.file.".config/wofi" = {
    source = ./cxOrz;
    recursive = true;
  };

}
