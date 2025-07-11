# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, hostname, locale, timezone, ... }: {

  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix

    # packages
    ./packages

    # shared modules
    ../../../modules/nixos/nix
    ../../../modules/nixos/sunshine
    ../../../modules/nixos/virtualisation

    # system specific modules
    ./modules/audio
    ./modules/boot
    ./modules/console
    ./modules/environment
    ./modules/hardware
    ./modules/locale
    ./modules/networking
    ./modules/programs
    ./modules/services
    ./modules/system
    ./modules/time
    ./modules/users
  ];

}
