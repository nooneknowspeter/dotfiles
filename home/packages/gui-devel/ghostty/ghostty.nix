{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    ghostty
  ];

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "UltraDark";
      font-family = "FiraCode Nerd Font";
      font-size = 11;
      background-opacity = 0.8;
      background-blur = false;
      confirm-close-surface = false;
      mouse-hide-while-typing = true;
      command = "TERM=xterm-256color ${pkgs.bash}/bin/bash";
      keybind = [
        "performable:ctrl+c=copy_to_clipboard"
        "performable:ctrl+v=paste_to_clipboard"
      ];
    };
  };

}
