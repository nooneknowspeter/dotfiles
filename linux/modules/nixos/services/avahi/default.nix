{
  config,
  lib,
  pkgs,
  ...
}:
{

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
    publish = {
      enable = true;
      userServices = true;
    };
  };

}
