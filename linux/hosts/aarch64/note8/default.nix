{ inputs, pkgs, config, }:
let hostname = "note8";
in inputs.nix-on-droid.lib.nixOnDroidConfiguration {
  pkgs = inputs.nixpkgs.legacyPackages."aarch64-linux";
  modules = [ ./configuration.nix ];
}
