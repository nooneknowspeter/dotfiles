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
      # sudo nixos-rebuild switch --flake .#hostname
      nixosConfigurations = {
        # main
        nooneknows = nixpkgs.lib.nixosSystem {
          modules = [
            ./linux/nixos/x86-64/main/configuration.nix
          ];
        };
      };

      # nix-darwin
      darwinConfigurations = {
        # macbook
        nooneknows = nix-darwin.lib.darwinSystem {
          modules = [
            ./nix-darwin/aarch/macbook/configuration.nix
          ];
        };
      };

      # home-manager configuration entrypoint
      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {

        # macos
        "nooneknows@darwin" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/darwin-macbook.nix
          ];
        };


        # base linux; w/ DE
        "nooneknows@linux-base" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/linux-base.nix
          ];
        };

        # content creation linux; w/ DE, content creation tools
        "nooneknows@linux-content" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/linux-content.nix
          ];
        };

        # full linux; w/ DE, dev tools, content creation tools
        "nooneknows@linux-full" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/linux-full.nix
          ];
        };


        # wsl
        "nooneknows@wsl" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/wsl.nix
          ];
        };

        # headless-devel
        "nooneknows@tty" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/tty.nix
          ];
        };

      };

    };
}
