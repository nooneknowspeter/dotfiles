{ config, pkgs, ... }: {

  home.packages = with pkgs; [
    cardinal
    lsp-plugins
    vital
    yabridge
    yabridgectl
  ];

}
