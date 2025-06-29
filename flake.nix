{
  description = "nooneknows dotfiles";

  inputs = {
    #nixpkgs
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

    # nixos-hardware
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };

    #stylix
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # musnix
    musnix  = {
      url = "github:musnix/musnix"; 
    };

    # lanzaboote; secure boot
    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ self, nixpkgs, home-manager, nix-darwin, nixos-hardware, stylix, nix-on-droid, musnix, lanzaboote, ... }:
    let
      locale = "en_US.UTF-8";
      timezone = "US/Eastern";
    in
    {

      # nixos
      # sudo nixos-rebuild switch --flake .#hostname
      nixosConfigurations = {
        legion =
          let
            hostname = "peter-legion";
          in
          nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";

            specialArgs = {
              inherit hostname;
              inherit inputs;
              inherit locale;
              inherit timezone;
            };

            modules = [
              ./linux/hosts/x86-64/peter-legion
              lanzaboote.nixosModules.lanzaboote
              nixos-hardware.nixosModules.lenovo-legion-16ithg6
              musnix.nixosModules.musnix
            ];
          };
      };

      # nix-darwin
      darwinConfigurations = {
        macbook =
          let
            hostname = "peter-macbook";
          in
          nix-darwin.lib.darwinSystem {
            system = "aarch64-darwin";

            specialArgs = {
              inherit inputs;
              inherit locale;
              inherit timezone;
            };

            modules = [
              ./darwin/hosts/aarch/peter-macbook
            ];
          };
      };

      # home-manager configuration entrypoint
      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {

        "nooneknows@darwin" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = {
            inherit inputs;
          };

          modules = [
            stylix.homeModules.stylix
            ./darwin/hosts/aarch/peter-macbook/home.nix
          ];
        };

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
            stylix.homeModules.stylix
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
