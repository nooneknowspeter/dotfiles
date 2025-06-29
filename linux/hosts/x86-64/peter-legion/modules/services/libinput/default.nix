{ config, lib, pkgs, ... }:
{

  # enable touchpad
  services.libinput = {
    enable = true;
  };

}
