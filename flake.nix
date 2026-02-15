{
  description = "nooneknows dotfiles";

  inputs = {
    ghostty = {
      url = "github:ghostty-org/ghostty";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.2";
      inputs.nixpkgs.follows = "system-nixpkgs";
    };
    musnix = {
      url = "github:musnix/musnix";
    };
    nix-darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "system-nixpkgs";
    };
    nix-ld = {
      url = "github:Mic92/nix-ld";
      inputs.nixpkgs.follows = "system-nixpkgs";
    };
    nix-on-droid = {
      url = "github:nix-community/nix-on-droid";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixgl = {
      url = "github:nix-community/nixGL";
    };
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable"; # user packages
    };
    nooneknowspeter = {
      url = "github:nooneknowspeter/nurpkgs";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
    };
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    system-nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable"; # system packages; drivers, system packages
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

      mkPkgs =
        { system, input }:
        input {
          inherit system;
          config.allowUnfree = true;
        };

      system = builtins.currentSystem; # NOTE: needs --impure flag

      forEachSupportedSystem =
        f:
        inputs.nixpkgs.lib.genAttrs supportedSystems (
          system:
          f {
            pkgs = mkPkgs {
              inherit system;
              input = import inputs.system-nixpkgs;
            };
          }
        );

      pkgs = mkPkgs {
        inherit system;
        input = import inputs.nixpkgs;
      };

      system-pkgs = mkPkgs {
        inherit system;
        input = import inputs.system-nixpkgs;
      };
    in
    {
      devShells = forEachSupportedSystem (
        { pkgs }:
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              # runtime & compilers
              cargo
              go
              nodejs
              pkg-config
              rustc
              python314
              rustup
              pkg-config
              zlib

              # formatters
              beautysh
              mdformat
              nixfmt-rfc-style
              nodePackages.prettier
              stylua
              taplo

              # tools
              just
              treefmt
            ];
          };
        }
      );

      nixosConfigurations = import ./modules/outputs/nixos { inherit inputs system; };

      darwinConfigurations = import ./modules/outputs/nix-darwin { inherit inputs system; };

      nixOnDroidConfigurations = import ./modules/outputs/nix-on-droid { inherit inputs system pkgs; };

      homeConfigurations = import ./modules/outputs/home-manager { inherit inputs system pkgs; };
    };
}
