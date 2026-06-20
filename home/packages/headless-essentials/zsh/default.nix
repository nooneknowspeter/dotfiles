{ config, pkgs, ... }:
let
  session = import ../../../modules/session;
in
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
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    sessionVariables = session.sessionVariables;
    shellAliases = session.shellAliases;
    initContent = session.zshConfig { inherit pkgs; };
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "alias-finder"
        "aliases"
        "ansible"
        "archlinux"
        # "asdf"
        "aws"
        "bun"
        "colorize"
        "cp"
        "direnv"
        "docker-compose"
        "docker"
        "dotnet"
        "fzf"
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
        "laravel5"
        "minikube"
        "nmap"
        "node"
        "opentofu"
        "pass"
        "perl"
        "pip"
        "poetry"
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
        "uv"
        "vi-mode"
        "zsh-interactive-cd"
      ];
      extraConfig = ''
        zstyle :omz:update mode remainder

        # auto-correction
        ENABLE_CORRECTION="true" 

        # vi mode
        VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
        VI_MODE_SET_CURSOR=true
      '';
    };
  };

}
