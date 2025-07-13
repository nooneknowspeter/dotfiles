{ config, pkgs, ... }: {

  imports = [
    # gui-devel
    ./cardinal
    ./ghostty
    ./plugdata
    ./savvycan
    # ./vscode
    ./wezterm
    ./wireshark
  ];

}
