{ ... }:
{
  imports = import ../../../lib/iterate-dirs.nix {
    directory = ./.;
    blacklistArray = [ "f3d" ];
  };
}
