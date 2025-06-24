{
  description = "nooneknows dotfiles";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # darwin
    nix-darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nixos
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
  };

  outputs =
    inputs@{ self, nixpkgs, home-manager, nix-darwin, nixos-hardware, ... }:
    let
      locale = "en_US.UTF-8";
      timezone = "America/Phoenix";
    in
    {

      # nixos
      # sudo nixos-rebuild switch --flake .#hostname
      nixosConfigurations = {
        # main
        nooneknows = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs;
            inherit locale;
            inherit timezone;
          };

          modules = [
            ./linux/nixos/x86-64/main/configuration.nix
          ];
        };
      };

      # nix-darwin
      darwinConfigurations = {
        # macbook
        nooneknows = nix-darwin.lib.darwinSystem {
          specialArgs = {
            inherit inputs;
            inherit locale;
            inherit timezone;
          };

          modules = [
            ./nix-darwin/aarch/macbook/configuration.nix
          ];
        };
      };

      # home-manager configuration entrypoint
      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {

        # headless-devel
        "nooneknows@nooneknows" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = {
            inherit inputs;
          };

          modules = [
            ./home/tty.nix
          ];
        };

      };

    };
}
