{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    fcitx5
    fcitx5-configtool
    fcitx5-mozc
  ];

  programs.fcitx5 = {
    enable = true;
  };

  programs.fcitx5-configtool = {
    enable = true;
  };

  programs.fcitx5-mozc = {
    enable = true;
  };

}
