{ pkgs, ... }:
{
  networking.firewall.checkReversePath = "loose";

  networking.networkmanager = {
    enable = true;
    plugins = with pkgs; [
      networkmanager-fortisslvpn
      networkmanager-l2tp
      networkmanager-openvpn
    ];
  };

  programs = {
    nm-applet = {
      enable = true;
    };
  };

  services = {
    strongswan = {
      enable = true;
    };
    tailscale = {
      enable = true;
    };
  };

  environment.etc."strongswan.conf" = {
    text = "";
  };

}
