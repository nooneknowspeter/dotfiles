{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    discord
  ];

  # programs.discord = {
  #   enable = true;
  # };

}
