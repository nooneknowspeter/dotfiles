{ config, pkgs, ... }:

{
  imports = [
    ./coolercontrol
    ./lm-sensors
    ./openrazer
    ./sbctl
    ./steam-run
  ];
}
