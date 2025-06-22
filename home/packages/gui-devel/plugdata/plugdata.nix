{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    plugdata
  ];

  programs.plugdata = {
    enable = true;
  };

}
