{ config, pkgs, ... }:
{

  imports = [
    # gui-devel
    ./cardinal
    ./freecad
    ./ghostty
    ./plugdata
    ./savvycan
    # ./vscode
    ./wezterm
    ./wireshark
  ];

}
