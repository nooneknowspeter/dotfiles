{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    # fcitx5-with-addons
    fcitx5-mozc
  ];

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-gtk
        fcitx5-mozc
        fcitx5-configtool
      ];
      settings = {
        inputMethod = {
          Group."0" = "Default";
          "Groups/0" = {
            Name = "Default";
            "Default Layout" = "us";
            DefaultIM = "mozc";
          };
          "Groups/0/Items/0".Name = "keyboard-us";
          "Groups/0/Items/1".Name = "mozc";
        };
        globalOptions = {
          Behaviour = {
            ActiveByDefault = false;
          };

          Hotkey = {
            TriggerKey = "SUPER_SPACE";
            EnumerateWithTriggerKeys = true;
          };
        };
      };
    };
  };

  home.sessionVariables = {
    INPUT_METHOD = "fcitx5";
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
  };

}
