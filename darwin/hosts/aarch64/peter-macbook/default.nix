{ inputs, system }:
let
  hostname = "peter-macbook";
  locale = "en_US.UTF-8";
in
inputs.nix-darwin.lib.darwinSystem {
  inherit system;

  specialArgs = { inherit inputs hostname locale; };

  modules = [ ./configuration.nix ];
}
