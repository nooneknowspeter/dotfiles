{ config, pkgs, ... }:

let
  pkgsNoCuda = import pkgs.path {
    inherit (pkgs.stdenv) system;
    config = {
      allowUnfree = true;
      cudaSupport = false;
    };
  };
in
{

  home.packages = with pkgsNoCuda; [
    bambu-studio
  ];

}
