{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    zathura
  ];

  programs.zathura = {
    enable = true;
  };

}
