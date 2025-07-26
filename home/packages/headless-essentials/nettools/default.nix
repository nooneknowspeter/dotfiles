{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ nettools ];

}
