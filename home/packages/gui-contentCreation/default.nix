{ config, pkgs, ... }:

{

  imports = [
    # gui-contentCreation
    ./ardour/ardour.nix
    ./blender/blender.nix
    ./freecad/freecad.nix
    ./houdini/houdini.nix
    ./natron/natron.nix
    ./obs-studio/obs-studio.nix
  ];

}
