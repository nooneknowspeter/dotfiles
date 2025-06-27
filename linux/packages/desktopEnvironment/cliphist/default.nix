{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wl-clipboard
    cliphist
  ];

  # programs.cliphist = {
  #   enable = true;
  # };

}
