{ ... }:
{

  imports = [
    # system specific
    ./lenovo-legion

    # shared modules
    ../../../../../modules/nixos/misc/vial
    ../../../../../modules/nixos/misc/virtualisation
    ../../../../../modules/nixos/misc/vnc
    ../../../../../modules/nixos/misc/vpn
  ];

}
