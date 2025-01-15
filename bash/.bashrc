#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# x server display, hyper v ip and port
export DISPLAY=:0
export LIBGL_ALWAYS_INDIRECT=1

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ohmyposh
eval "$(oh-my-posh init bash)"
eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/bubblesextra.omp.json)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-01-08 03:38:14
export PATH="$PATH:/home/nooneknows/.local/bin"

if [ -z "$TMUX" ]; then
    tmux new-session -A -s main
fi
