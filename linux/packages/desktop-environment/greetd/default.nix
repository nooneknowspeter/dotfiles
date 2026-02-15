{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    greetd
    tuigreet
  ];

}
