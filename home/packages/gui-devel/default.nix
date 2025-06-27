{ config, pkgs, ... }:

{

  imports = [
    # gui-devel
    ./ghostty
    ./plugdata
    ./savvycan
    # ./vscode
    ./wezterm
    ./wireshark
  ];

}
