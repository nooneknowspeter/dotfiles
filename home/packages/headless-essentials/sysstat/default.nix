{ pkgs, ... }:
{
  home.packages = with pkgs; [ sysstat ];
}
