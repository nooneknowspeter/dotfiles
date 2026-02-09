{ ... }:
{
  imports = import ../../../lib/iterate-dirs.nix {
    directory = ./.;
    blacklistArray = [
      "ardour"
      "audio-plugins"
      "blender"
      "houdini"
      "natron"
    ];
  };
}
