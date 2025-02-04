CHECK_FOR_STOW=$(pacman -Q | grep stow)

if [[ ! $CHECK_FOR_STOW == '' ]]; then
  echo -e "\n GNU Stow is installed \n"
else
  echo -e "\n GNU Stow is not installed \n"

  sudo pacman -S stow --noconfirm
fi
