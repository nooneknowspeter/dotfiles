{ config, pkgs, ... }:
{

  imports = [
    # gui-contentCreation
    ./ardour
    ./blender
    ./davinci-resolve
    ./freecad
    ./natron
    # ./houdini
    ./obs-studio
  ];

}
