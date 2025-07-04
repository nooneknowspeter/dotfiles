{ config, pkgs, ... }: {

  imports = [
    ../../home.nix

    ../../packages/headless-essentials
    ../../packages/headless-devel

    ../../packages/gui-essentials
    ../../packages/gui-devel

    ../../../darwin/packages/desktop-environment
  ];

}
