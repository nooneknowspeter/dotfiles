{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    oh-my-zsh
    zsh
    zsh-autosuggestions
    zsh-forgit
    zsh-fzf-history-search
    zsh-fzf-tab
    zsh-syntax-highlighting
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions = true;
    syntaxHighlighting = { enable = true; };
    sessionVariables = {
      DISPLAY = "172.23.144.1:0";
      LIBGL_ALWAYS_INDIRECT = 0;
      EDITOR = "nvim";
      DOTFILES = "$HOME/dotfiles";
      NIX_CONFIG = "experimental-features = nix-command flakes";
    };
    shellAliases = {
      cat = "bat --theme=base16-256";
      clear = "clear; tmux clear-history; clear";
      cmatrix = "cmatrix -fkbrc";
      donut = "curl ascii.live/donut";
      find = "fd";
      grep = "rg --color=auto";
      knot = "curl ascii.live/knot";
      ls = "lsd";
      tmux = "TERM=xterm-256color tmux";
    };
    plugins = [
      {
        name = "fzf-tab";
        src = "${pkgs.zsh-fzf-tab}/share/fzf-tab";
      }
    ];
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "alias-finder"
        "aliases"
        "ansible"
        "archlinux"
        "asdf"
        "aws"
        "bun"
        "colorize"
        "cp"
        "docker-compose"
        "docker"
        "dotnet"
        "fzf"
        "fzf-tab"
        "gh"
        "git"
        "git-lfs"
        "git-prompt"
        "git-extras"
        "golang"
        "history-substring-search"
        "history"
        "k9s"
        "kubectl"
        "minikube"
        "nmap"
        "node"
        "perl"
        "pip"
        "postgres"
        "python"
        "rust"
        "safe-paste"
        "ssh"
        "starship"
        "sudo"
        "systemd"
        "terraform"
        "themes"
        "tldr"
        "tmux"
        "vi-mode"
        "zsh-interactive-cd"
      ];
      extraConfig = ''
        zstyle :omz:update mode remainder
        
        VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
        VI_MODE_SET_CURSOR=true
      '';
    };
  };

}
