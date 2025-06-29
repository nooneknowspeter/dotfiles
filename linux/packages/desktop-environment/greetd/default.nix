{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    greetd.greetd
    greetd.tuigreet
  ];

}
