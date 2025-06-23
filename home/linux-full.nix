{ config, pkgs, ... }:

{

  imports = [
    ./home.nix

    ./packages/headless-essentials/headless-essentials.nix
    ./packages/headless-devel/headless-devel.nix

    ./packages/gui-essentials/gui-essentials.nix
    ./packages/gui-devel/gui-devel.nix

    ./packages/gui-contentCreation/gui-contentCreation.nix

    ../linux/packages/desktopEnvironment/linux-desktopEnvironment.nix
  ];

}
