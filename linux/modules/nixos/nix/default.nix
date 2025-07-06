{ config, lib, pkgs, ... }: {

  nix = {
    extraOptions = "experimental-features = nix-command flakes ";
    settings = { auto-optimise-store = true; };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

}
