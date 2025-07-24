{ config, lib, pkgs, ... }: {

  services.logind = {
    lidSwitch = "hybrid-sleep";
    powerKey = "hybrid-sleep";
    powerKeyLongPress = "reboot";
    rebootKey = "hybrid-sleep";
    rebootKeyLongPress = "reboot";
    suspendKey = "hybrid-sleep";
    suspendKeyLongPress = "reboot";
  };

}
