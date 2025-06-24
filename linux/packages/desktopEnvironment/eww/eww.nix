{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    eww
  ];

  # programs.eww = {
  #   enable = true;
  # };

}
