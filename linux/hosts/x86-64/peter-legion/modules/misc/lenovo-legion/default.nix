{ pkgs, config, ... }:
{

  # https://discourse.nixos.org/t/help-loading-kernel-module-from-store/44230
  # https://discourse.nixos.org/t/how-do-i-control-my-laptops-fan-speeds/45964/4
  environment.systemPackages = with pkgs; [
    lenovo-legion
    linuxKernel.packages.linux_latest_libre.lenovo-legion-module
  ];

  boot = {
    extraModulePackages = with config.boot.kernelPackages; [ lenovo-legion-module ];
    kernelModules = [ "lenovo-legion-module" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
  };

}
