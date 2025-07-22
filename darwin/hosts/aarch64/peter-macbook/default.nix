{ inputs
, config
, pkgs
,
}:
let
  hostname = "peter-macbook";
  locale = "en_US.UTF-8";
  timezone = "US/Eastern";
in
inputs.nix-darwin.lib.darwinSystem {
  system = "aarch64-darwin";

  specialArgs = {
    inherit hostname;
    inherit inputs;
    inherit locale;
    inherit timezone;
  };

  modules = [ ./configuration.nix ];
}
