# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"

test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo "eval ""$("$(brew --prefix)"/bin/brew shellenv)" >>~/.bashrc

source ~/.bashrc

# homebrew variable set in bashrc and zshrc

sudo pacman -Syyu --noconfirm
