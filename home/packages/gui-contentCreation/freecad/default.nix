{ config, pkgs, ... }: {

  # https://github.com/FreeCAD/FreeCAD/issues/17491
  home.packages = with pkgs;
    [
      # freecad
      (writeShellScriptBin "freecad" ''
        QT_QPA_PLATFORM=xcb ${freecad}/bin/freecad
      '')
    ];

}
