{ inputs, ... }:
let
  hostname = "peter-legion";
  locale = "en_US.UTF-8";
in
inputs.nixpkgs.lib.nixosSystem {
  system = "x86_64-linux";

  specialArgs = {
    inherit hostname;
    inherit inputs;
    inherit locale;
  };

  modules = [
    ./configuration.nix

    inputs.nix-ld.nixosModules.nix-ld
    inputs.lanzaboote.nixosModules.lanzaboote
    inputs.nixos-hardware.nixosModules.lenovo-legion-16ithg6
    inputs.musnix.nixosModules.musnix
  ];
}
