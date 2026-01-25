{ config, pkgs, ... }:
{

  imports = [
    # gui-engineering
    ./freecad
    ./googleearth-pro
    ./kicad
    ./orca-slicer
    ./qgis
  ];

}
