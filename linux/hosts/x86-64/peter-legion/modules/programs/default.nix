{ config, lib, pkgs, ... }:
{

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.zsh.enable = true;


  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    gamescopeSession.enable = true;
  };

  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [mangohud protonup-qt lutris bottles heroic];

}
