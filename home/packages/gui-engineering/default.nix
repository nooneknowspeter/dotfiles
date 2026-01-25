{ config, pkgs, ... }:
{

  imports = [
    # gui-engineering
    ./freecad
    ./googleearth-pro
    ./kicad
    ./lightburn
    ./orca-slicer
    ./qgis
  ];

}
