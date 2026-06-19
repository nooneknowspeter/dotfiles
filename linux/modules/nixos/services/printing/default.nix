{
  config,
  lib,
  pkgs,
  ...
}:
{

  services.printing = {
    enable = true;
    browsing = true;
    defaultShared = true;
    openFirewall = true;
  };

}
