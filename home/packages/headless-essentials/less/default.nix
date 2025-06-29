{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    less
  ];

  programs.less = {
    enable = true;
  };

}
