# give executable permissions to all scripts
chmod +x ./*/*.sh

CHECK_AND_INSTALL_GNU_STOW() {

  ./stow-install.sh

}

STOW_ALL_CONFIGS() {

  ./configs/alacritty.sh
  ./configs/ghostty.sh
  ./configs/nvim.sh
  ./configs/posting.sh
  ./configs/tmux.sh
  ./configs/vscode.sh
  ./configs/wezterm.sh

}

STOW_ZSH() {

  ./configs/shells/zsh.sh

}

STOW_BASH() {
  ./configs/shells/bash.sh
}

CONFIGURATION() {

  CHECK_AND_INSTALL_GNU_STOW

  cd ./../../

  if [[ $SHELL == /usr/bin/zsh ]]; then
    echo -e "\n zsh \n"

    #!/usr/bin/zsh

    STOW_ZSH

  else
    echo -e "\n bash \n"

    #!/usr/bin/bash

    STOW_BASH

  fi

  STOW_ALL_CONFIGS
}

echo -e "\n stow or no? y/n \n"

read USER_INPUT

if [[ $USER_INPUT = "y" ]]; then
  echo -e "\n if you ain't stowing then you ain't going \n"

  CONFIGURATION
else
  echo -e "\n alright then... \n"
fi
