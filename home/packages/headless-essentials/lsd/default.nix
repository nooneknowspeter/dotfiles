{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    lsd
  ];

  programs.lsd = {
    enable = true;
  };

}
