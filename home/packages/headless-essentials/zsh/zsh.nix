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
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    sessionVariables = {
      DISPLAY = "172.23.144.1:0";
      LIBGL_ALWAYS_INDIRECT = 0;
      EDITOR = "nvim";
      DOTFILES = "$HOME/dotfiles";
      NIX_CONFIG = "experimental-features = nix-command flakes";
    };
    initContent = ''
      # fzf-tab
      source ${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh
      
      # bind ctrl + space for autosuggest accept
      bindkey '^ ' autosuggest-accept

      # clear tmux histroy and clear terminal
      alias clear='clear; tmux clear-history; clear'
  
      # cmatrix
      alias cmatrix="cmatrix -fkbrc"

      # ascii.live animations
      alias donut="curl ascii.live/donut" # donut animation
      alias knot="curl ascii.live/knot" # knot animation

      # force launch tmux with 256 colors
      alias tmux="TERM=xterm-256color tmux"

      # ls
      alias ls="lsd"

      # cat
      alias cat="bat --theme=base16-256"

      # grep
      alias grep='rg --color=auto'

      # find
      alias find='fd'
    '';
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
        
        # auto-correction
        ENABLE_CORRECTION="true" 
      
        # vi mode
        VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
        VI_MODE_SET_CURSOR=true
      '';
    };
  };

}
