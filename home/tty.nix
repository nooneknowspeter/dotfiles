{ config, pkgs, ... }:

{

  imports = [
    ./home.nix

    ./packages/headless-essentials
    ./packages/headless-devel
  ];

}
