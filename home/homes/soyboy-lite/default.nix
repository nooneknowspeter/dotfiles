{ inputs, username, ... }:
let homeDirectory = "/home/${username}";
in inputs.home-manager.lib.homeManagerConfiguration {
  pkgs = inputs.nixpkgs.legacyPackages.aarch64-darwin;

  extraSpecialArgs = {
    inherit inputs;
    inherit username;
    inherit homeDirectory;
  };

  modules = [ inputs.stylix.homeModules.stylix ./home.nix ];
}
