{ config, pkgs, ... }:
{

  # https://github.com/FreeCAD/FreeCAD/issues/17491
  home.packages = with pkgs; [
    calculix
    elmerfem
    freecad
    gmsh
    netgen
  ];

}
