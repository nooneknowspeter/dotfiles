{ config, pkgs, ... }:

{

  imports = [
    ./home.nix

    ./packages/headless-essentials/headless-essentials.nix

    ./packages/gui-essentials/gui-essentials.nix

    ../linux/packages/desktopEnvironment/linux-desktopEnvironment.nix
  ];

}
