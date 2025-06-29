{ config, pkgs, ... }: {

  home.packages = with pkgs; [ fastfetch ];

  programs.fastfetch = { enable = true; };

}
