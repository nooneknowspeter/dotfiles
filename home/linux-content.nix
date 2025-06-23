{ config, pkgs, ... }:

{

  imports = [
    ./home.nix

    ./packages/headless-essentials/headless-essentials.nix

    ./packages/gui-essentials/gui-essentials.nix

    ./packages/gui-contentCreation/gui-contentCreation.nix

    ../linux/packages/desktopEnvironment/linux-desktopEnvironment.nix
  ];

}
