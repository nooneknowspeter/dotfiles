{ config, lib, pkgs, ... }:
{

  nix.extraOptions = '' experimental-features = nix-command flakes '';

  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.allowUnfreePredicate = _: true;
}
