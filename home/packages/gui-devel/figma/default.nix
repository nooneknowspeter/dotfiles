{ pkgs, ... }:
{
  home.packages = with pkgs; [
    figma-agent
    figma-linux
  ];
}
