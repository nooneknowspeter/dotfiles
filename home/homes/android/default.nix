{ inputs, username, ... }:
let homeDirectory = "/data/data/com.termux.nix/files/home";
in inputs.home-manager.lib.homeManagerConfiguration {
  pkgs = inputs.nixpkgs.legacyPackages.aarch64-linux;

  extraSpecialArgs = {
    inherit inputs;
    inherit username;
    inherit homeDirectory;
  };

  modules = [ ./home.nix ];
}
