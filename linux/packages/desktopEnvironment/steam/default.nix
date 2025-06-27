{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    steam
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    gamescopeSession = {
      enable = true;
    };
    extraCompatPackages = with pkgs; [ proton-ge-bin ];
    extraPackages = with pkgs; [ gamescope ];
    protontricks = {
      enable = true;
    };
  };

  programs.gamemode.enable = true;

}
