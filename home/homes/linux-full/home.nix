{ config, pkgs, ... }:
{

  imports = [
    ../../home.nix

    ../../packages/headless-essentials
    ../../packages/headless-devel

    ../../packages/gui-essentials
    ../../packages/gui-devel

    ../../packages/gui-contentCreation

    ../../packages/gui-engineering

    ../../../linux/packages/desktop-environment
  ];

}
