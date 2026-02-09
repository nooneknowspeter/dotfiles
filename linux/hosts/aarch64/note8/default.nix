{ inputs, pkgs, ... }:
let
  hostname = "note8";
in
inputs.nix-on-droid.lib.nixOnDroidConfiguration {
  inherit pkgs;

  modules = [ ./configuration.nix ];
}
