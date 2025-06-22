{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    termshark
  ];

  programs.termshark = {
    enable = true;
  };

}
