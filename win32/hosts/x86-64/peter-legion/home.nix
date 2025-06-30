{ config, pkgs, ... }:

{

  imports = [
    ../../../../home/home.nix

    ../../../../home/packages/headless-essentials
    ../../../../home/packages/headless-devel

    ../../../../home/packages/gui-essentials
    ../../../../home/packages/gui-devel
  ];

  home.sessionVariables = {
    DISPLAY = "172.23.144.1:0";
    LIBGL_ALWAYS_INDIRECT = 0;
  };

}
