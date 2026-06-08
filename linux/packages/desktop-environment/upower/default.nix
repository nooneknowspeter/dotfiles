{ pkgs, ... }:
{
  home.packages = with pkgs; [
    upower
  ];
}
