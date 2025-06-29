{ config, pkgs, ... }:
let
  configLocation = if pkgs.stdenv.isLinux then ".config/Code/User" else "Library/Application Support/Code/User";
in
{

  home.packages = with pkgs; [
    vscode-with-extensions
  ];

  programs.vscode = {
    enable = true;
    profiles."nooneknows" = {
      extensions = with pkgs.vscode-extensions; [
        aaron-bond.better-comments
        asvetliakov.vscode-neovim
        davidanson.vscode-markdownlint
        esbenp.prettier-vscode
        github.github-vscode-theme
        ms-azuretools.vscode-docker
        ms-kubernetes-tools.vscode-kubernetes-tools
        ms-python.debugpy
        ms-python.debugpy
        ms-python.vscode-pylance
        ms-vscode-remote.remote-containers
        ms-vscode-remote.remote-ssh
        ms-vscode-remote.remote-ssh-edit
        ms-vscode-remote.remote-wsl
        redhat.vscode-yaml
        streetsidesoftware.code-spell-checker
        sumneko.lua
        tal7aouy.icons
      ];
    };
  };

  # keybindings.json
  home.file."${configLocation}/keybindings.json" = {
    source = ./User/keybindings.json;
    recursive = false;
  };

  # settings.json
  home.file."${configLocation}/settings.json" = {
    source = ./User/settings.json;
    recursive = false;
  };

}
