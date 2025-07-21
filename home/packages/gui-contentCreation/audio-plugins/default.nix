{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    drumgizmo
    lsp-plugins
    samplv1
    surge
    vital
    yabridge
    yabridgectl
  ];

}
