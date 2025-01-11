# artwork
echo -e "                                              
\n

 ▄▀▀▄ ▀▄  ▄▀▀▀▀▄   ▄▀▀▀▀▄   ▄▀▀▄ ▀▄  ▄▀▀█▄▄▄▄ 
█  █ █ █ █      █ █      █ █  █ █ █ ▐  ▄▀   ▐ 
▐  █  ▀█ █      █ █      █ ▐  █  ▀█   █▄▄▄▄▄  
  █   █  ▀▄    ▄▀ ▀▄    ▄▀   █   █    █    ▌ 
▄▀   █     ▀▀▀▀     ▀▀▀▀   ▄▀   █    ▄▀▄▄▄▄   
█    ▐                     █    ▐    █    ▐   
▐                          ▐         ▐        
                                              
\n
"

echo -e "\n   people fear what they don't understand    \n"

sleep 1

# update system
UPDATE_SYSTEM() {

	sudo pacman -Syu --noconfirm

}

# install homebrew
HOMEBREW_INSTALL() {

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
	test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	echo "eval ""$("$(brew --prefix)"/bin/brew shellenv)" >>~/.bashrc
}

# tmux install
TMUX_INSTALL() {

	echo -e "\n installing tmux \n"

	sudo pacman -S tmux --noconfirm

	sudo pacman -S tmate --noconfirm

}

# tmux function for installing config and tpm
TMUX_CONFIG() {

	TMUX_CONFIG_URL=https://raw.githubusercontent.com/nooneknowspeter/dotfiles/refs/heads/main/.tmux.conf

	# install tmux config
	echo -e "\n installing tmux config \n"

	echo -e "\n removing old config \n"

	rm ~/.tmux.conf

	echo -e "\n copying config \n"

	curl -o ~/.tmux.conf "$TMUX_CONFIG_URL"

	echo -e "\n installed tmux config \n"

	# install tmux plugin manager
	echo "installing tmux plugin manager"

	rm -rf ~/.tmux/plugins/tpm

	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

	tmux source ~/.tmux.conf

	echo -e "\n installed tmux plugin manager \n"

	sleep 1

}

# install and configure SHELL
INSTALL_SHELL() {

	echo -e "\n zsh or bash? \n"

	echo -e "\n 1 zsh, duh \n"

	echo -e "\n 2 bash, ew \n"

	read -r SELECTED_SHELL

	if [[ $SELECTED_SHELL == 1 ]]; then

		sudo pacman -S zsh zsh-syntax-highlighting zsh-lovers zsh-history-substring-search zsh-completions zsh-autosuggestions powerline --noconfirm

		chsh -s /usr/bin/zsh "$USER"

	fi

	echo -e "\n ewww \n"

	brew install jandedobbeleer/oh-my-posh/oh-my-posh

	oh-my-posh font install

}

# updates shell configuration
UPDATE_SHELL_CONFIG() {

	ZSH_CONFIG_URL=https://raw.githubusercontent.com/nooneknowspeter/dotfiles/refs/heads/main/.zshrc

	BASH_CONFIG_URL=https://raw.githubusercontent.com/nooneknowspeter/dotfiles/refs/heads/main/.bashrc

	SHELL_CONFIG_TYPE=0

	SHELL_CONFIG_URL=0

	# checks shell
	if [[ $SHELL == /usr/bin/zsh ]]; then

		SHELL_CONFIG_TYPE=zshrc

		SHELL_CONFIG_URL=$ZSH_CONFIG_URL

		echo -e "\n using zsh \n"

	else

		SHELL_CONFIG_TYPE=bashrc

		SHELL_CONFIG_URL=$BASH_CONFIG_URL

		echo -e "\n using bash \n"

	fi

	curl -o ~/."$SHELL_CONFIG_TYPE" "$SHELL_CONFIG_URL"

	echo -e "installed $SHELL_CONFIG_TYPE config"
}

# install neovim
INSTALL_NEOVIM() {

	echo -e "\n 1 pacman install, arch btw \n"

	echo -e "\n 2 homebrew install \n"

	read -r NEOVIM_INSTALL_METHOD

	if [[ $NEOVIM_INSTALL_METHOD == 1 ]]; then

		sudo pacman -S neovim --noconfirm

	else

		brew install neovim

	fi

}

# install dependencies; languages, packages, ...
INSTALL_DEV_DEPS() {

	# install yay
	git clone https://aur.archlinux.org/yay.git

	cd yay || return

	makepkg -si

	# install developer essentials
	sudo pacman -S git base-devel cmake python lua lua5.1 -noconfirm

	yay -S python311 --noconfirm

}
