{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    steam
  ];

  programs.steam = {
    enable = true;
  };

}
