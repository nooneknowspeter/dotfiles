{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ tldr ];

  # programs.tldr = {
  #   enable = true;
  # };

}
