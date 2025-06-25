{ config, pkgs, ... }:

let
  configLocation = if pkgs.stdenv.isLinux then ".config/Code/User" else "Library/Application Support/Code/User";
in
{

  home.packages = with pkgs; [
    vscode
  ];

  programs.vscode = {
    enable = true;
    profiles."nooneknows" = {
      extensions = with pkgs.vscode-extensions; [
        aaron-bond.better-comments
        asvetliakov.vscode-neovim
        davidanson.vscode-markdownlint
        docker.docker
        esbenp.prettier-vscode
        felixzeller.markdown-oxide
        github.github-vscode-theme
        gitpod.gitpod-desktop
        henrytsz.nvim
        ms-azuretools.vscode-docker
        ms-kubernetes-tools.vscode-kubernetes-tools
        ms-python.debugpy
        ms-python.python
        ms-python.vscode-pylance
        ms-vscode-remote.remote-containers
        ms-vscode-remote.remote-ssh
        ms-vscode-remote.remote-ssh-edit
        ms-vscode-remote.remote-wsl
        ms-vscode.remote-explorer
        ms-vscode.remote-server
        oliverparaskos.fountain-lsp
        piersdeseilligny.betterfountain
        redhat.vscode-yaml
        s-nlf-fh.glassit
        streetsidesoftware.code-spell-checker
        sumneko.lua
        tal7aouy.icons
        tek256.simple-dark
        vincesalvino.dark-plus-black
        wayou.vscode-todo-highlight
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
