{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    nix
  ];

  # programs.nix = {
  #   enable = true;
  # };

}
