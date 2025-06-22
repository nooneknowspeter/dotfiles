{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    can-utils
  ];

  programs.can-utils = {
    enable = true;
  };

}
