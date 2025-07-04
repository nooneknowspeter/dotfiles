{
  description = "nooneknows dotfiles";

  inputs = {
    #nixpkgs
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-unstable"; };

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
    nixos-hardware = { url = "github:NixOS/nixos-hardware/master"; };

    #stylix
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # hyprland
    hyprland = { url = "github:hyprwm/Hyprland"; };

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    # ghostty
    ghostty = { url = "github:ghostty-org/ghostty"; };

    # nix-on-droid
    nix-on-droid = {
      url = "github:nix-community/nix-on-droid";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # musnix
    musnix = { url = "github:musnix/musnix"; };

    # lanzaboote; secure boot
    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-ld
    nix-ld = {
      url = "github:Mic92/nix-ld";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nix-darwin, nixos-hardware
    , stylix, nix-on-droid, musnix, lanzaboote, hyprland, nix-ld, ... }:
    let
      locale = "en_US.UTF-8";
      timezone = "US/Eastern";
      supportedSystems =
        [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forEachSupportedSystem = f:
        inputs.nixpkgs.lib.genAttrs supportedSystems
        (system: f { pkgs = import inputs.nixpkgs { inherit system; }; });
    in {

      # nixos
      # sudo nixos-rebuild switch --flake .#hostname
      nixosConfigurations = {
        legion = let hostname = "peter-legion";
        in nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          specialArgs = {
            inherit hostname;
            inherit inputs;
            inherit locale;
            inherit timezone;
          };

          modules = [
            ./linux/hosts/x86-64/peter-legion
            nix-ld.nixosModules.nix-ld
            lanzaboote.nixosModules.lanzaboote
            nixos-hardware.nixosModules.lenovo-legion-16ithg6
            musnix.nixosModules.musnix
          ];
        };
      devShells = forEachSupportedSystem ({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
      };
            # json
            prettier

      # home-manager configuration entrypoint
      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {

        # remote / vps development
        "anyone@headless" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = let
            username = "anyone";
            homeDirectory = "/home/anyone";
          in {
            inherit inputs;
            inherit username;
            inherit homeDirectory;
          };

          modules = [
            stylix.homeModules.stylix
            ./linux/hosts/x86-64/headless/home.nix
          ];
        };
            #hyprland
            hyprls

        "nooneknows@android" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.aarch64-linux;

            # lua
          extraSpecialArgs = let
            username = "nooneknows";
            homeDirectory = "/data/data/com.termux.nix/files/home";
          in {
            inherit inputs;
            inherit username;
            inherit homeDirectory;
          };

          modules =
            [ stylix.homeModules.stylix ./linux/hosts/aarch64/note8/home.nix ];
        };

        "nooneknows@darwin" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.aarch64-darwin;

          extraSpecialArgs = let
            username = "nooneknows";
            homeDirectory = "/home/nooneknows";
          in {
            inherit inputs;
            inherit username;
            inherit homeDirectory;
          };

          modules = [
            stylix.homeModules.stylix
            ./darwin/hosts/aarch/peter-macbook/home.nix
          ];
            lua-language-server
        };
            stylua

        "nooneknows@headless" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = let
            username = "nooneknows";
            homeDirectory = "/home/nooneknows";
          in {
            inherit inputs;
            inherit username;
            inherit homeDirectory;
          };

          modules = [
            stylix.homeModules.stylix
            ./linux/hosts/x86-64/headless/home.nix
          ];
        };
            # markdown

        "nooneknows@linux" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = let
            username = "nooneknows";
            homeDirectory = "/home/nooneknows";
          in {
            inherit inputs;
            inherit username;
            inherit homeDirectory;
          };

          modules = [
            stylix.homeModules.stylix
            ./linux/hosts/x86-64/peter-legion/home.nix
            marksman
          ];
        };
            nodejs

        "nooneknows@wsl" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          extraSpecialArgs = let
            username = "nooneknows";
            homeDirectory = "/home/nooneknows";
          in {
            inherit inputs;
            inherit username;
            inherit homeDirectory;
          };

          modules = [
            stylix.homeModules.stylix
            ./win32/hosts/x86-64/peter-legion/home.nix
            # nix
            nil
            nixd
            nixfmt
            statix
          ];
        };
      });

      };

      darwinConfigurations =
        import ./modules/outputs/nix-darwin { inherit inputs; };

      nixOnDroidConfigurations =
        import ./modules/outputs/nix-on-droid { inherit inputs; };

    };
}
