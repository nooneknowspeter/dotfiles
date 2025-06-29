{ config, pkgs, ... }: {

  imports = [
    # gui-contentCreation
    ./ardour
    ./blender
    ./davinci-resolve
    ./freecad
    # ./houdini
    # ./natron
    ./obs-studio
  ];

}
