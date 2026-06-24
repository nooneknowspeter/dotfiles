{
  config,
  pkgs,
  inputs,
  ...
}:
let
  audio = [
    # ../../../modules/nixos/audio/musnix
    ../../../modules/nixos/audio/pipewire
  ];

  boot = [
    ../../../modules/nixos/boot/lanzaboote
    # ../../../modules/nixos/boot/systemd
  ];

  console = [
    ../../../modules/nixos/console
  ];

  environment = [ ];

  hardware = [
    ../../../modules/nixos/hardware/bluetooth
    ../../../modules/nixos/hardware/graphics
  ];

  i18n = [
    ../../../modules/nixos/i18n
  ];

  misc = [
    ../../../modules/nixos/misc/biometrics
    ../../../modules/nixos/misc/file-sharing
    ../../../modules/nixos/misc/vial
    ../../../modules/nixos/misc/virtualisation
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
    ../../../modules/nixos/services/printing
    ../../../modules/nixos/services/ssh
    ../../../modules/nixos/services/upower
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
    ./hardware-configuration.nix
  ]
  ++ modules;

  # https://github.com/NixOS/nixos-hardware/blob/master/lenovo/thinkpad/yoga.nix
  hardware.sensor.iio.enable = true;

}
