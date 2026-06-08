{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    openrazer-daemon
    polychromatic
  ];

  hardware.openrazer = {
    enable = true;
    batteryNotifier = {
      percentage = 20;
    };
    users = [ "nooneknows" ];
    verboseLogging = true;
  };

}
