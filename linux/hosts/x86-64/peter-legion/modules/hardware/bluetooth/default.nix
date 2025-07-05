{ config, lib, pkgs, locale, ... }: {
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    # packages = pkgs.bluez;
  };
}
