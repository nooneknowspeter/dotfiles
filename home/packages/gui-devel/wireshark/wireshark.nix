{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wireshark
  ];

  programs.wireshark = {
    enable = true;
  };

}
