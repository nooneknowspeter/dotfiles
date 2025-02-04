# give executable permissions to all scripts
chmod +x ./*/*.sh

# artwork
./artwork/animations.sh

# functions
UPDATE_PACKAGES() {
	./install/pacman.sh
}

INSTALL_YAY() {
	./install/yay.sh
}

INSTALL_HOMEBREW() {
	./install/homebrew.sh
}

INSTALL_PACKAGES() {
	./install/installPackages.sh
}

GET_PACKAGES() {
	./packages/getPackages.sh
}

CHECK_AND_INSTALL_GNU_STOW() {
	./stow/stow-install.sh
}

STOW_CONFIGS() {
	./stow/gnu-stow.sh
}

ZSH() {

	# install zsh and set as default
	CHECK_AND_INSTALL_GNU_STOW

	sudo pacman -S zsh --noconfirm

	echo -e "\n installed shells \n"
	chsh -l

	sudo pacman -S zsh zsh-syntax-highlighting zsh-lovers zsh-history-substring-search zsh-completions zsh-autosuggestions powerline --noconfirm

	# change default shell to zsh
	chsh -s /usr/bin/zsh

}

# options menu
OPTIONS() {

	# display options
	DISPLAY_OPTIONS() {

		echo -e "\n ???????????????????? \n"

		sleep 0.5

		echo -e "\n 1 -> install and configure all \n"

		echo -e "\n 2 -> install packages from lists \n"

		echo -e "\n 3 -> get packages and store in lists \n"

		echo -e "\n 4 -> stow configurations \n"

		echo -e "\n 0 -> exit \n"

	}

	DISPLAY_OPTIONS

	read -r INPUT

	# install all software and dependencies
	if [[ $INPUT == 1 ]]; then

		echo -e "\n installing and updating package managers and packages \n"

		echo -e "\n updating pacman \n"
		UPDATE_PACKAGES

		echo -e "\n install devel packages"
		sudo pacman -S base-devel curl wget --noconfirm

		echo -e "\n install yay \n"
		INSTALL_YAY

		echo -e "\n installing homebrew \n"
		INSTALL_HOMEBREW

		echo -e "\n installing all packages from lists \n"
		INSTALL_PACKAGES

		echo -e "\n install and configure zsh \n"
		ZSH

		echo -e "\n migrating configuration with stow \n"
		STOW_CONFIGS

		# install packages from lists
	elif [[ $INPUT == 2 ]]; then

		echo -e "\n installing all packages from lists \n"
		INSTALL_PACKAGES

		# extract installed packages, transform and load into lists
		# tracks installed packages across systems
	elif [[ $INPUT == 3 ]]; then

		echo -e "\n getting all packages \n"
		GET_PACKAGES

	elif [[ $INPUT == 4 ]]; then

		echo -e "\n stowing configurations \n"
		STOW_CONFIGS

		# exit script
	elif [[ $INPUT == 0 ]]; then

		echo -e "\n people fear what they don't know \n"

	else

		echo -e "\n enter a valid option \n"

		OPTIONS

	fi

}

OPTIONS
