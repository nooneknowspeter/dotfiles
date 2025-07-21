{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    # fcitx5
    # fcitx5-with-addons
    # fcitx5-gtk
    # fcitx5-mozc
    # fcitx5-configtool
    # fcitx5-anthy
    # rime-data
    # fcitx5-rime
  ];

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-gtk
        fcitx5-mozc
        fcitx5-anthy
        fcitx5-configtool
      ];
      settings = {
        globalOptions = {
          Hotkey = {
            EnumerateWithTriggerKeys = true;
            EnumerateSkipFirst = false;
          };

          "Hotkey/TriggerKeys" = {
            "0" = "Super+space";
          };
        };

        inputMethod = {
          GroupOrder."0" = "Default";
          "Groups/0" = {
            Name = "Default";
            "Default Layout" = "us";
            DefaultIM = "mozc";
          };
          "Groups/0/Items/0".Name = "keyboard-us";
          "Groups/0/Items/1".Name = "mozc";
        };
      };
    };
  };

  # home.file.".config/fcitx5" = {
  #   source = config.lib.file.mkOutOfStoreSymlink
  #     "${config.home.homeDirectory}/dotfiles/configs/fcitx5";
  # };

  home.sessionVariables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    GLFW_IM_MODULE = "ibus";
  };

}
