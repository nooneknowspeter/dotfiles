{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ lazysql ];

  programs.lazysql = {
    enable = true;
  };

}
