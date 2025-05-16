DOTFILES_URL:=git@github.com:nooneknowspeter/dotfiles

play:
	ansible-playbook -K local.yml
pull:
	ansible-pull -K --full -U ${{DOTFILES_URL}}
stow-linux:
	stow alacritty ghostty git hyprland k9s nix nix-linux nvim posting starship tmux vim vscode wezterm zsh
stow-darwin:
	stow alacritty ghostty git hyprland k9s nix nix-darwin nvim posting starship tmux vim vscode wezterm zsh
