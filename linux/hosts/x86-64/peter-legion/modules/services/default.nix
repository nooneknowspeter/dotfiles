{ ... }: {

  imports = [
    # system specific
    ./thinkfan

    # shared modules
    ../../../../../modules/nixos/services/greetd
    ../../../../../modules/nixos/services/kmscon
    ../../../../../modules/nixos/services/libinput
    ../../../../../modules/nixos/services/logind
    ../../../../../modules/nixos/services/openrgb
    ../../../../../modules/nixos/services/printing
    ../../../../../modules/nixos/services/ssh
  ];

}
