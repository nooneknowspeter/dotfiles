{ config, pkgs, ... }:
{

  imports = [
    # gui-devel
    ./cardinal
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
