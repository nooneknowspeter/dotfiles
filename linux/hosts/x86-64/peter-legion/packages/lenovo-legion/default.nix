{ config, pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    dmidecode
    lenovo-legion
    lm_sensors
    mokutil
  ];

}
