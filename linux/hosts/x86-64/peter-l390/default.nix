{ inputs, system, ... }:
let
  hostname = "peter-l390";
  locale = "en_US.UTF-8";
in
inputs.system-nixkgs.lib.nixosSystem {
  inherit system;

  specialArgs = { inherit inputs hostname locale; };

  modules = [
    ./configuration.nix

    inputs.nix-ld.nixosModules.nix-ld
    inputs.lanzaboote.nixosModules.lanzaboote
    inputs.musnix.nixosModules.musnix
    inputs.sops-nix.nixosModules.sops
  ];
}
