{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ cloc ];

}
