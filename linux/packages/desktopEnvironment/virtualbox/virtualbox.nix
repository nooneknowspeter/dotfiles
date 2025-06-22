{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    virtualbox
  ];

  programs.virtualbox = {
    enable = true;
  };

}
