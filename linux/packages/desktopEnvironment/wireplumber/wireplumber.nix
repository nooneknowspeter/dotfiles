{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wireplumber
  ];

  programs.wireplumber = {
    enable = true;
  };

}
