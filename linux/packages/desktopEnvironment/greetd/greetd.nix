{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    greetd.greetd
  ];

  # programs.greetd.greetd = {
  #   enable = true;
  # };

}
