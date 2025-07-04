{ config, pkgs, ... }:

{

  imports = [
    ../../home.nix

    ../../packages/headless-essentials
    ../../packages/headless-devel

    ../../packages/gui-essentials
    ../../packages/gui-devel
  ];

  home.sessionVariables = {
    DISPLAY = "172.23.144.1:0";
    LIBGL_ALWAYS_INDIRECT = 0;
  };

}
