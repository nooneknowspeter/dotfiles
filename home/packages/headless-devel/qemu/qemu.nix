{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    qemu
  ];

  programs.qemu = {
    enable = true;
  };

}
