{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    uwsm
  ];

  # programs.uwsm = {
  #   enable = true;
  # };

}
