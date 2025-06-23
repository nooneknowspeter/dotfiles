{
  description = "nooneknows dotfiles";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # home manager
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # darwin
    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nixos
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
  };

  outputs =
    inputs@{ self, nixpkgs, home-manager, nix-darwin, ... }:
    {

      # nixos
      nixosConfigurations = {
        nooneknows = nixpkgs.lib.nixosSystem {

          modules = [
            ./linux/nixos/x86-64/main/configuration.nix

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.nooneknows = ./home/base.nix;

              # Optionally, use home-manager.extraSpecialArgs to pass
              # arguments to home.nix
            }
          ];
        };
      };

      # nix-darwin
      darwinConfigurations = {
        nooneknows-mac = nix-darwin.lib.darwinSystem {
          system = "x86_64-darwin";
          modules = [
            ./nix-darwin/configuration.nix
            home-manager.darwinModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.nooneknows = ./home/base.nix;

              # Optionally, use home-manager.extraSpecialArgs to pass
              # arguments to home.nix
            }
          ];
        };
      };

      # home-manager configuration entrypoint
      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {

        # full blown arch setup
        "nooneknows@nooneknows-arch" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/base.nix
          ];
        };

        # arch wsl
        "nooneknows@nooneknows-headless" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/base.nix
          ];
        };

      };

    };
}
