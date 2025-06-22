{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    impala
  ];

  programs.impala = {
    enable = true;
  };

}
