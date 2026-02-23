{ pkgs, ... }:
{
  home.packages = with pkgs; [
    paraview
  ];
}
