{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ ncurses ];

}
