{ config, pkgs, ... }:

{

  imports = [
    # gui-devel
    ./ghostty/ghostty.nix
    ./plugdata/plugdata.nix
    ./savvycan/savvycan.nix
    ./vscode/vscode.nix
    ./wezterm/wezterm.nix
    ./wireshark/wireshark.nix
  ];

}
