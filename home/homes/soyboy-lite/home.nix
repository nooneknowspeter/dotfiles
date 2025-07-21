{ config, pkgs, ... }:
{

  imports = [
    ../../home.nix

    ../../packages/headless-essentials

    ../../packages/gui-essentials

    ../../../darwin/packages/desktop-environment
  ];

}
