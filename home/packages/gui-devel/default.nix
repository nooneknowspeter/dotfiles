{ config, pkgs, ... }:
{

  imports = [
    # gui-devel
    ./cardinal
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
