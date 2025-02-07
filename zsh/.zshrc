#
# ~/.zshrc
#

# clear tmux histroy and clear terminal
alias tc='clear; tmux clear-history; clear'
  
# cmatrix
alias cmatrix="cmatrix -fkbrc"

# tty-clock
alias tty-clock="tty-clock -scbtBC5"

# donut animation
alias donut="curl ascii.live/donut"

# command completion
autoload bashcompinit
bashcompinit
autoload -Uz compinit
compinit

# auto completion menu 
zstyle ':completion:*' menu select

# completion with sudo
zstyle ':completion::complete:*' gain-privileges 1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls
# alias ls='ls --color=auto'
alias ls="lsd --icon-theme=unicode"

# cat
alias cat="bat"

# grep
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# fish features
# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bind ctrl + space for autosuggest accept
bindkey '^ ' autosuggest-accept

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# bash completion
autoload -U +X bashcompinit && bashcompinit

#pkgfile
source /usr/share/doc/pkgfile/command-not-found.zsh

# vi mode
bindkey -v
export KEYTIMEOUT=1

# x server display, hyper v ip and port; wsl
export DISPLAY=172.23.144.1:0
export LIBGL_ALWAYS_INDIRECT=1

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ohmyposh
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config '~/kushal-all-black.json')"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-01-08 03:38:14
export PATH="$PATH:/home/nooneknows/.local/bin"

# # tmux on term launch
# if [ -z "$TMUX" ]; then
#     tmux new-session -A -s main
# fi

# default editor
export EDITOR=nvim

# vi plugin
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# kubernetes autocompletion
source <(kubectl completion zsh)
# minikube
source <(minikube completion zsh)

# aws autocompletion
export PATH=/usr/bin/aws_completer:$PATH
complete -C '/usr/bin/aws_completer' aws

PATH="/home/nooneknows/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/nooneknows/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/nooneknows/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/nooneknows/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/nooneknows/perl5"; export PERL_MM_OPT;

# terraform autocompletion
complete -o nospace -C /usr/bin/terraform terraform

# thefuck
eval $(thefuck --alias)
