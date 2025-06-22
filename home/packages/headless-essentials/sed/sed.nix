{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    sed
  ];

  programs.sed = {
    enable = true;
  };

}
