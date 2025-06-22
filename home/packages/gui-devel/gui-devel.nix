{ config, pkgs, ... }:

{

  imports = [
    # gui-devel
    ./ghostty/ghostty-symlink.nix
    ./plugdata/plugdata.nix
    ./savvycan/savvycan.nix
    ./vscode/vscode.nix
    ./wezterm/wezterm.nix
    ./wireshark/wireshark.nix
  ];

}
