DOTFILES_URL:=git@github.com:nooneknowspeter/dotfiles

pull:
	ansible-pull -U ${{DOTFILES_URL}}
