{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ hyperfine ];

}
