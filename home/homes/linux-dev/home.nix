{ config, pkgs, ... }:
{

  imports = [
    ../../home.nix

    ../../packages/headless-essentials
    ../../packages/headless-devel

    ../../packages/gui-essentials
    ../../packages/gui-devel

    ../../../linux/packages/desktop-environment
  ];

}
