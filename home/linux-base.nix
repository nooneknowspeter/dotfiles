{ config, pkgs, ... }:

{

  imports = [
    ./home.nix

    ./packages/headless-essentials

    ./packages/gui-essentials

    ../linux/packages/desktopEnvironment
  ];

}
