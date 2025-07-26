{
  description = "nooneknows dotfiles";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
    };

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    ghostty = {
      url = "github:ghostty-org/ghostty";
    };

    nix-on-droid = {
      url = "github:nix-community/nix-on-droid";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    musnix = {
      url = "github:musnix/musnix";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-ld = {
      url = "github:Mic92/nix-ld";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl = {
      url = "github:nix-community/nixGL";
    };
  };

  outputs =
    inputs@{ ... }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forEachSupportedSystem =
        f:
        inputs.nixpkgs.lib.genAttrs supportedSystems (
          system: f { pkgs = import inputs.nixpkgs { inherit system; }; }
        );
    in
    {
      devShells = forEachSupportedSystem (
        { pkgs }:
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              # bash
              bash-language-server

              # go
              go

              # hyprland
              hyprls

              # json
              prettier

              # lua
              lua-language-server
              stylua

              # markdown
              marksman
              nodejs

              # nix
              nil
              nixd
              nixfmt-rfc-style
              nixfmt-tree
              statix

              # python
              python314

              # rust
              cargo
              rustc
              rustup
              pkg-config
              zlib

              # yaml
              yaml-language-server
            ];
          };
        }
      );

      nixosConfigurations = import ./modules/outputs/nixos { inherit inputs; };

      darwinConfigurations = import ./modules/outputs/nix-darwin { inherit inputs; };

      nixOnDroidConfigurations = import ./modules/outputs/nix-on-droid { inherit inputs; };

      homeConfigurations = import ./modules/outputs/home-manager { inherit inputs; };
    };
}
