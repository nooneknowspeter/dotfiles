{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    man
  ];

  programs.man = {
    enable = true;
  };

}
