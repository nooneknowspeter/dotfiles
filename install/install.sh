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
