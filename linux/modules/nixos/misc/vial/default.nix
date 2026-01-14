{ pkgs, ... }:
{

  services.udev.packages = with pkgs; [
    via
    vial
  ];

  environment.systemPackages = with pkgs; [
    via
    vial
  ];

}
