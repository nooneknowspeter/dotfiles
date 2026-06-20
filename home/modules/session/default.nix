{
  sessionVariables = {
    NIX_CONFIG = "experimental-features = nix-command flakes";

    EDITOR = "nvim";
    BROWSER = "brave";

    DOTFILES = "$HOME/dotfiles";
    RESOURCES = "$HOME/resources";
    SECRETS = "$HOME/secrets";
    PASSWORD_STORE_DIR = "$SECRETS";
    DOCS = "$HOME/docs";
    NOTES = "$HOME/notes";
  };

  shellAliases = {
    EDITOR = "nvim";
    BROWSER = "brave";
  };

  zshConfig =
    { pkgs }:
    ''
      # fzf-tab
      source ${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh

      # bind ctrl + space for autosuggest accept
      bindkey '^ ' autosuggest-accept

      # cbonsai
      alias cbonsai="cbonsai -li"

      # cmatrix
      alias unimatrix="unimatrix -nb -s 96 -l k"

      # clear tmux histroy and clear terminal
      alias clear="clear; tmux clear-history; clear"

      # ascii.live animations
      alias donut="curl ascii.live/donut" # donut animation
      alias knot="curl ascii.live/knot" # knot animation

      # force launch tmux with 256 colors
      alias tmux="TERM=xterm-256color tmux"

      # ls
      alias ls="eza"

      # cat
      alias cat="bat --theme=base16-256"

      # grep
      alias grep="rg --color=auto"

      # find
      alias find="fd"

      # lsusb
      alias lsusb="cyme"

      #du
      alias du="dust"

      #df
      alias df="duf -theme 'ansi'"
    '';
}
