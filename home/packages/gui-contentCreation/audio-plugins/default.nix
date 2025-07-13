{ config, pkgs, ... }: {

  home.packages = with pkgs; [
    cardinal
    drumgizmo
    lsp-plugins
    samplv1
    surge
    vital
    yabridge
    yabridgectl
  ];

}
