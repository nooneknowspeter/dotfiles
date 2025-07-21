{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    # pianobooster
    (writeShellScriptBin "pianobooster" ''
      QT_QPA_PLATFORM=xcb ${pianobooster}/bin/pianobooster
    '')
  ];

}
