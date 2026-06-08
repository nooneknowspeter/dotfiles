{ pkgs, ... }:
{

  environment = {
    systemPackages = with pkgs; [
      btop
      lm_sensors
    ];
  };

}
