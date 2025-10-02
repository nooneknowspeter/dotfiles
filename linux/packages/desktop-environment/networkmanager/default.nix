{ pkgs, ... }:
{
  home.packages = with pkgs; [
    networkmanagerapplet
    networkmanager_dmenu
  ];

  services.network-manager-applet.enable = true;
}
