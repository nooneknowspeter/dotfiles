{ pkgs, ... }:
{
  home.packages = with pkgs; [
    waypipe
  ];
}
