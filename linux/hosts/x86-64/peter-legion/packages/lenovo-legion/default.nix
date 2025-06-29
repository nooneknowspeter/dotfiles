{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    lenovo-legion
    linuxKernel.packages.linux_6_6.lenovo-legion-module
  ];

}
