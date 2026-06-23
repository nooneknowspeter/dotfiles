{
  config,
  lib,
  pkgs,
  ...
}:
{

  services.openssh = {
    enable = true;
    allowSFTP = true;
    openFirewall = true;
  };

}
