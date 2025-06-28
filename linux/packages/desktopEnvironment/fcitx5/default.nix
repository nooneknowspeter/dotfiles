{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    fcitx5-with-addons
    fcitx5-gtk
    fcitx5-mozc
    # fcitx5-configtool
  ];

  # i18n.inputMethod = {
  #   enable = true;
  #   type = "fcitx5";
  #   fcitx5 = {
  #     waylandFrontend = true;
  #     addons = with pkgs; [
  #       fcitx5-gtk
  #       fcitx5-mozc
  #       fcitx5-configtool
  #     ];
  #   };
  # };

  home.file.".config/fcitx5" = {
    source = ./fcitx5;
    recursive = true;
  };

  home.sessionVariables = {
    INPUT_METHOD = "fcitx5";
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
  };

}
