{ config, pkgs, ... }: {

  imports = [
    # gui-contentCreation
    ./ardour
    ./audio-plugins
    ./blender
    ./davinci-resolve
    ./djv
    ./freecad
    ./houdini
    ./musescore
    ./pianobooster
  ];

}
