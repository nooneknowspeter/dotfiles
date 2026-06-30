# https://nixos.wiki/wiki/Sunshine

{ pkgs, ... }:
{

  services.rustdesk-server = {
    enable = true;
    openFirewall = true;
  };

  services.sunshine = {
    enable = true;
    autoStart = true;
    capSysAdmin = true;
    openFirewall = true;
  };

  security.wrappers.sunshine = {
    owner = "root";
    group = "root";
    capabilities = "cap_sys_admin+p";
    source = "${pkgs.sunshine}/bin/sunshine";
  };

  services.avahi.publish.enable = true;
  services.avahi.publish.userServices = true;

  # Enables the uinput kernel module and creates the uinput group
  hardware.uinput.enable = true;

  # Add your user to the uinput group
  users.users.nooneknows.extraGroups = [ "uinput" ];

}
