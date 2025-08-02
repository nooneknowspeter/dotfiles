{ pkgs, ... }:
{
  home.packages = with pkgs; [ ipinfo ];
}
