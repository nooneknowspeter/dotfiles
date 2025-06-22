{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    screenkey
  ];

  programs.screenkey = {
    enable = true;
  };

}
