{ pkgs, ... }:
{
  home.packages = with pkgs; [
    sigrok-cli
    pulseview
  ];
}
