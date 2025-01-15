# which "$SHELL"

CHECK_AND_INSTALL_GNU_STOW() {
  CHECK_FOR_STOW=$(pacman -Q | grep stow)

  if [[ ! $CHECK_FOR_STOW == '' ]]; then
    echo -e "\n GNU Stow is installed \n"
  else
    echo -e "\n GNU Stow is not installed \n"

    sudo pacman -S stow --noconfirm
  fi
}

STOW_CONFIGURATION() {
  stow ghostty

  stow nvim

  stow tmux

  stow wezterm

  stow vscode
}

CONFIGURATION() {
  if [[ $SHELL == /usr/bin/zsh ]]; then
    echo -e "\n zsh \n"

    #!/usr/bin/zsh

    stow zsh

    CHECK_AND_INSTALL_GNU_STOW

    STOW_CONFIGURATION
  else
    echo -e "\n bash \n"

    #!/usr/bin/bash

    stow bash

    CHECK_AND_INSTALL_GNU_STOW

    STOW_CONFIGURATION
  fi
}

echo -e "\n stow or no? y/n \n"

read USER_INPUT

if [[ $USER_INPUT = "y" ]]; then
  echo -e "\n if you ain't stowing then you ain't going \n"

  CONFIGURATION
else
  echo -e "\n alright then... \n"
fi
