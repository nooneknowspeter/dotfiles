{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ mtpfs ];

}
