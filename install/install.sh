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
