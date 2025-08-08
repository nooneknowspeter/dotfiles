{ pkgs, ... }:
{
  home.packages = with pkgs; [
    assimp
    f3d
  ];
}
