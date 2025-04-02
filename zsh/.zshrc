#
# ~/.zshrc
#

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell" # theme
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
ENABLE_CORRECTION="true" # auto-correction

# oh-my-zsh
plugins=(
    alias-finder
    aliases
    ansible
    archlinux
    asdf
    aws
    bun
    colorize
    cp
    dotnet
    fzf
    fzf-tab
    gh
    git
    git-lfs
    git-prompt
    git-extras
    golang
    history-substring-search
    history
    k9s
    kubectl
    minikube
    nmap
    node
    perl
    pip
    postgres
    python
    rust
    safe-paste
    ssh
    starship
    sudo
    systemd
    terraform
    themes
    tldr
    tmux
    vi-mode
    zsh-autosuggestions
    zsh-interactive-cd
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# bind ctrl + space for autosuggest accept
bindkey '^ ' autosuggest-accept

# vi mode
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

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

# x server display, hyper v ip and port; wsl
export DISPLAY=172.23.144.1:0
export LIBGL_ALWAYS_INDIRECT=0

# default editor
export EDITOR=nvim
