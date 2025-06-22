{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    glab
  ];

  programs.glab = {
    enable = true;
  };

}
