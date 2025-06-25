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
      timezone = "US/Eastern";
    in
    {

      # nixos
      # sudo nixos-rebuild switch --flake .#hostname
      nixosConfigurations = {
        peter-legion =
          let
            hostname = "peter-legion";
          in
          nixpkgs.lib.nixosSystem {
            specialArgs = {
              inherit hostname;
              inherit inputs;
              inherit locale;
              inherit timezone;
            };

            modules = [
              ./linux/hosts/x86-64/peter-legion/configuration.nix
            ];
          };
      };

      # nix-darwin
      darwinConfigurations = {
        peter-macbook =
          let
            hostname = "peter-macbook";
          in
          nix-darwin.lib.darwinSystem {
            specialArgs = {
              inherit inputs;
              inherit locale;
              inherit timezone;
            };

            modules = [
              ./darwin/hosts/aarch/peter-macbook/configuration.nix
            ];
          };
      };

      # home-manager configuration entrypoint
      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {

        "nooneknows@headless" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = {
            inherit inputs;
          };

          modules = [
            ./linux/hosts/x86-64/headless/home.nix
          ];
        };

        "nooneknows@linux" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = {
            inherit inputs;
          };

          modules = [
            ./linux/hosts/x86-64/peter-legion/home.nix
          ];
        };

        "nooneknows@wsl" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = {
            inherit inputs;
          };

          modules = [
            ./win32/hosts/x86-64/peter-legion/home.nix
          ];
        };

      };

    };
}
