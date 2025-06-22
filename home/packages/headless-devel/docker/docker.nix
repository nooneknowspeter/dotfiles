{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    docker
  ];

  programs.docker = {
    enable = true;
  };

}
