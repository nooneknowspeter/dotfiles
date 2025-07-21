{ config, ... }:
{

  # https://discourse.nixos.org/t/how-do-i-control-my-laptops-fan-speeds/45964/4
  boot.kernelModules = [ "lenovo-legion-module" ];
  boot.extraModulePackages = with config.boot.kernelPackages; [ lenovo-legion-module ];

}
