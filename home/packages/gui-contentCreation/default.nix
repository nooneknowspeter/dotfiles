{ config, pkgs, ... }: {

  imports = [
    # gui-contentCreation
    ./ardour
    ./blender
    ./davinci-resolve
    ./djv
    ./freecad
    ./houdini
    # ./natron
  ];

}
