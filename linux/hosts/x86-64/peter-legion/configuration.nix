# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{
  config,
  pkgs,
  inputs,
  ...
}:
let
  audio = [
    ../../../modules/nixos/audio/musnix
    ../../../modules/nixos/audio/pipewire
  ];

  boot = [
    ../../../modules/nixos/boot/lanzaboote
  ];

  console = [
    ../../../modules/nixos/console
  ];

  environment = [ ];

  hardware = [
    ../../../modules/nixos/hardware/bluetooth
    ../../../modules/nixos/hardware
    ../../../modules/nixos/hardware/nvidia
    ../../../modules/nixos/hardware/graphics
  ];

  i18n = [
    ../../../modules/nixos/i18n
  ];

  misc = [
    ../../../modules/nixos/misc/file-sharing
    ../../../modules/nixos/misc/vial
    ../../../modules/nixos/misc/virtualisation
    ../../../modules/nixos/misc/vnc
    ../../../modules/nixos/misc/vpn
  ];

  networking = [
    ../../../modules/nixos/networking
  ];

  nix = [
    ../../../modules/nixos/nix
  ];

  programs = [
    ../../../modules/nixos/programs/dconf
    ../../../modules/nixos/programs/nix-ld
    ../../../modules/nixos/programs/steam
    ../../../modules/nixos/programs/zsh
  ];

  services = [
    ../../../modules/nixos/services/avahi
    ../../../modules/nixos/services/greetd
    ../../../modules/nixos/services/libinput
    ../../../modules/nixos/services/logind
    ../../../modules/nixos/services/openrgb
    ../../../modules/nixos/services/printing
    ../../../modules/nixos/services/ssh
    ../../../modules/nixos/services/usbmuxd
  ];

  system = [
    ../../../modules/nixos/system
  ];

  users = [
    ../../../modules/nixos/users/nooneknows
  ];

  modules =
    [ ]
    ++ audio
    ++ boot
    ++ console
    ++ environment
    ++ hardware
    ++ i18n
    ++ misc
    ++ networking
    ++ nix
    ++ programs
    ++ services
    ++ system
    ++ users;
in
{

  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ]
  ++ modules;

  # system/host specific configuration
  boot = {
    extraModulePackages = with config.boot.kernelPackages; [ lenovo-legion-module ];
    kernelModules = [ "lenovo-legion-module" ];
  };

  environment = {
    systemPackages = with pkgs; [
      lenovo-legion
      inputs.nooneknowspeter.packages.x86_64-linux.legionlinuxtui
    ];
  };

  hardware = { };

  services = {
    thinkfan = {
      enable = true;
    };
  };

}
