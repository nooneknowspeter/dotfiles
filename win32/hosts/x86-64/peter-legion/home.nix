{ config, pkgs, ... }:

{

  imports = [
    ../../../../home/home.nix

    ../../../../home/packages/headless-essentials
    ../../../../home/packages/headless-devel

    ../../../../home/packages/gui-essentials
    ../../../../home/packages/gui-devel
  ];

}
