#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# x server display, hyper v ip and port
export DISPLAY=172.23.144.1:0
export LIBGL_ALWAYS_INDIRECT=1

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ohmyposh
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/clean-detailed.omp.json)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-01-08 03:38:14
export PATH="$PATH:/home/nooneknows/.local/bin"

# tmux on term launch
if [ -z "$TMUX" ]; then
    tmux new-session -A -s main
fi

# command completion
autoload -Uz compinit
compinit

# auto completion menu 
zstyle ':completion:*' menu select

# completion with sudo
zstyle ':completion::complete:*' gain-privileges 1

# default editor
export EDITOR=nvim

# vi mode
bindkey -v
export KEYTIMEOUT=1

# vi plugin
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
