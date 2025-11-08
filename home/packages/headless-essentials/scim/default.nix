{ pkgs, ... }:
{
  home.packages = with pkgs; [
    sc
  ];
}
