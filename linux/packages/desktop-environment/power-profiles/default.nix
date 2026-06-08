{ pkgs, ... }:
{
  home.packages = with pkgs; [
    power-profiles-daemon
  ];
}
