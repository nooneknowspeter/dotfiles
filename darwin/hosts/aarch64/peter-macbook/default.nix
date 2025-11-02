{
  inputs,
  config,
  pkgs,
}:
let
  hostname = "peter-macbook";
  locale = "en_US.UTF-8";
in
inputs.nix-darwin.lib.darwinSystem {
  system = "aarch64-darwin";

  specialArgs = {
    inherit hostname;
    inherit inputs;
    inherit locale;
  };

  modules = [ ./configuration.nix ];
}
