{ ... }:
{
  # nixpkgs.config = import ./nixpkgs-config.nix;
  # xdg.configFile."nixpkgs/config.nix".source = ./nixpkgs-config.nix;

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
      allowBroken = true;
      allowInsecurePredicate = (_: true);
      cudaSupport = true;
    };
  };
}
