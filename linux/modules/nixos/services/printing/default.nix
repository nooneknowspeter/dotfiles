{
  config,
  lib,
  pkgs,
  ...
}:
{

  services.printing = {
    enable = true;
    browsed = true;
    browsing = true;
    defaultShared = true;
    openFirewall = true;
  };

}
