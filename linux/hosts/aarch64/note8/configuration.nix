{ config, pkgs, ... }:
{

  imports = [
    ../../../modules/nix-on-droid/android-integration
    ../../../modules/nix-on-droid/nix
    ../../../modules/nix-on-droid/system
    ../../../modules/nix-on-droid/terminal
  ];

  user = {
    # NOTE: slow load up time with zsh enabled
    # shell = pkgs.zsh;
    userName = "nooneknows";
  };

}
