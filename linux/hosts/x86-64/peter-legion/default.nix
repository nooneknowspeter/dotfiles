{ inputs, system, ... }:
let
  hostname = "peter-legion";
  locale = "en_US.UTF-8";
in
inputs.system-nixpkgs.lib.nixosSystem {
  inherit system;

  specialArgs = { inherit inputs hostname locale; };

  modules = [
    ./configuration.nix

    inputs.nix-ld.nixosModules.nix-ld
    inputs.lanzaboote.nixosModules.lanzaboote
    inputs.nixos-hardware.nixosModules.lenovo-legion-16ithg6
    inputs.musnix.nixosModules.musnix
  ];
}
