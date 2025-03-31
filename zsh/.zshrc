#
# ~/.zshrc
#

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster" # theme
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
ENABLE_CORRECTION="true" # auto-correction

# clear tmux histroy and clear terminal
alias clear='clear; tmux clear-history; clear'
  
# cmatrix
alias cmatrix="cmatrix -fkbrc"

# tty-clock
alias tty-clock="tty-clock -scbtBC5"

# ascii.live animations
alias donut="curl ascii.live/donut" # donut animation
alias knot="curl ascii.live/knot" # knot animation

# alias
alias tmux="TERM=xterm-256color tmux"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls
# alias ls='ls --color=auto'
alias ls="lsd"

# cat
alias cat="bat"

# grep
alias grep='grep --color=auto'

# bind ctrl + space for autosuggest accept
bindkey '^ ' autosuggest-accept

# x server display, hyper v ip and port; wsl
export DISPLAY=172.23.144.1:0
export LIBGL_ALWAYS_INDIRECT=0

# default editor
export EDITOR=vim

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
    systemd
    terraform
    thefuck
    themes
    tmux
    vi-mode
    zsh-autosuggestions
    zsh-interactive-cd
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
