{
  inputs,
  username,
  pkgs,
  ...
}:
let
  homeDirectory = "/data/data/com.termux.nix/files/home";
in
inputs.home-manager.lib.homeManagerConfiguration {
  inherit pkgs;

  extraSpecialArgs = { inherit inputs username homeDirectory; };

  modules = [
    inputs.stylix.homeModules.stylix
    ./home.nix
  ];
}
