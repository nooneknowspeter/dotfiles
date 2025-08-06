{ pkgs, ... }:
{
  networking.firewall.checkReversePath = "loose";

  networking.networkmanager = {
    enable = true;
    plugins = with pkgs; [
      networkmanager-fortisslvpn
      networkmanager-l2tp
      networkmanager-openvpn
      networkmanager_strongswan
    ];
  };

  programs = {
    nm-applet = {
      enable = true;
    };
    openvpn3 = {
      enable = true;
    };
  };

  services = {
    mullvad-vpn = {
      enable = true;
    };
    softether = {
      enable = true;
    };
    strongswan = {
      enable = true;
    };
    tailscale = {
      enable = true;
    };
    wg-netmanager = {
      enable = true;
    };
    xl2tpd = {
      enable = true;
    };
  };
}
