{ config, pkgs, ... }:
let
  configLocation = if pkgs.stdenv.isLinux then ".config/Code" else "Library/Application Support/Code";
in
{

  home.packages = with pkgs; [ vscode-fhs ];

  home.file."${configLocation}/User/settings.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/Code/User/settings.json";
  };

  home.file."${configLocation}/User/keybindings.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/Code/User/keybindings.json";
  };

}
