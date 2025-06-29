{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    uwsm
  ];

}
