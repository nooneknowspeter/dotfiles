{ pkgs, ... }:
{
  programs.distrobox = {
    enable = true;
  };

  home.packages = with pkgs; [ distrobox-tui ];
}
