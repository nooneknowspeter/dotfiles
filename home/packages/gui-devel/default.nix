{ config, pkgs, ... }:
{

  imports = [
    # gui-devel
    ./cardinal
    ./ghostty
    ./imhex
    ./plugdata
    ./savvycan
    ./vscode
    ./wezterm
    ./wireshark
  ];

}
