{ config, pkgs, ... }:
{

  imports = [
    # gui-devel
    ./cardinal
    ./ghostty
    ./plugdata
    ./savvycan
    ./wezterm
    ./wireshark
  ];

}
