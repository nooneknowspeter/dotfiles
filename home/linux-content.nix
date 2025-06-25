{ config, pkgs, ... }:

{

  imports = [
    ./home.nix

    ./packages/headless-essentials

    ./packages/gui-essentials

    ./packages/gui-contentCreation

    ../linux/packages/desktopEnvironment
  ];

}
