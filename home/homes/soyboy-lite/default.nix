{
  inputs,
  username,
  pkgs,
  ...
}:
let
  homeDirectory = "/home/${username}";
in
inputs.home-manager.lib.homeManagerConfiguration {
  inherit pkgs;

  extraSpecialArgs = { inherit inputs username homeDirectory; };

  modules = [
    inputs.stylix.homeModules.stylix
    ./home.nix
  ];
}
