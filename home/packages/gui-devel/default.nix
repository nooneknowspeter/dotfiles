{ config, pkgs, ... }:
{

  imports = [
    # gui-devel
    ./cardinal
    ./cursor
    ./figma
    ./ghidra
    ./ghostty
    ./imhex
    ./plugdata
    ./savvycan
    ./vscode
    ./wezterm
    ./wireshark
  ];

}
