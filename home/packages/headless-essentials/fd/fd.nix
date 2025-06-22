{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    fd
  ];

  programs.fd = {
    enable = true;
  };

}
