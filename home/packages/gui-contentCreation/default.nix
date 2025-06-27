{ config, pkgs, ... }:

{

  imports = [
    # gui-contentCreation
    ./ardour
    ./blender
    ./freecad
    ./houdini
    ./natron
    ./obs-studio
  ];

}
