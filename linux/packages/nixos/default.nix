{ config, pkgs, ... }:

{
  imports = [
    ./lm-sensors
    ./openrazer
    ./sbctl
    ./steam-run
  ];
}