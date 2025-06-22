{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    jq
  ];

  programs.jq = {
    enable = true;
  };

}
