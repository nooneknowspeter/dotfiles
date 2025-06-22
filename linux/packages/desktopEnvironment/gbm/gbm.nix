{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    gbm
  ];

  programs.gbm = {
    enable = true;
  };

}
