{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    # tmux
  ];

  programs.tmux = {
    enable = true;
    mouse = true;
    terminal = "screen-256color";
    keyMode = "vi";
    historyLimit = 10000;
    escapeTime = 0;
    baseIndex = 1;
    plugins = with pkgs.tmuxPlugins; [
      continuum
      cpu
      logging
      pain-control
      # prefix-highlight
      resurrect
      sensible
      vim-tmux-navigator
      {
        plugin = resurrect;
        extraConfig = "set -g @resurrect-capture-pane-contents 'on'";
      }
      {
        plugin = prefix-highlight;
        extraConfig = ''
          set -g status-left '#{prefix_highlight}   #S'
        '';
      }
    ];
    extraConfig = ''
      # binding prefix + r to reload config
      unbind r
      bind r source-file ~/.config/tmux/tmux.conf

      # override to enable true-color for compatible terminals
      set -ga terminal-overrides ",*256col*:Tc"       

      # override cursor
      set -ga terminal-overrides ',*:Ss=\E[%p1%d q:Se=\E[2 q'

      # general
      set -g set-clipboard on         # use system clipboard
      set -g detach-on-destroy off    # don't exit from tmux when closing a session
      set -g status-interval 1        # update the status bar every X seconds (default: 15 seconds)
      set -g allow-passthrough on   # allow programs in the pane to bypass tmux (e.g. for image preview)

      bind -T copy-mode-vi v send -X begin-selection # bind v for visual select
      bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel # bind y to copy text 
      bind P paste-buffer # paste yanked text with "prefix + p" ("prefix + p" goes to previous window)

      # splitting 
      bind s split-window -v -c "#{pane_current_path}"
      bind v split-window -h -c "#{pane_current_path}"

      # new window in same path
      bind c new-window -c "#{pane_current_path}"

      # automatically renumber windows when one is closed
      set -g renumber-windows on 

      # set status line position to the top
      set-option -g status-position top

      # appearance
      set -g status-left-length 20
      set -g status-justify centre
      set -g window-status-format "#I:#W"
      set -g window-status-current-format " #I:#W"
      set-window-option -g clock-mode-style 12 # clock format to 
      set -g status-right "#{b:pane_current_path} | %I:%M:%S %p"

      # full transparency
      set-option -g status-style bg=default

      set -ga update-environment TERM
      set -ga update-environment TERM_PROGRAM
    '';
  };

}
