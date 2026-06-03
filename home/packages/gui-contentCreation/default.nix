{ ... }:
{
  imports = import ../../../lib/iterate-dirs.nix {
    directory = ./.;
    blacklistArray = [
      "blender"
      "davinci-resolve"
      "houdini"
      "natron"
    ];
  };
}
