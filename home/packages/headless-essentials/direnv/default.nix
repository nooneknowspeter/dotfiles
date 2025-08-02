{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    direnv
    nix-direnv
  ];

  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
    };
  };

}
