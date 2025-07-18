{ config, lib, pkgs, ... }: {

  services.logind = {
    lidSwitch = "sleep";
    powerKey = "sleep";
    powerKeyLongPress = "reboot";
    rebootKey = "sleep";
    rebootKeyLongPress = "reboot";
    suspendKey = "sleep";
    suspendKeyLongPress = "reboot";
  };

}
