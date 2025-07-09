{ config, lib, pkgs, ... }: {

  musnix.enable = true;

  users.users.nooneknows.extraGroups = [ "audio" ];
}
