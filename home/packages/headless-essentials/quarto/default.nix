{ pkgs, ... }:
{
  home.packages = with pkgs; [ quarto ];
}
