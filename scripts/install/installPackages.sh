# install packages from
pacman -Sy --needed --noconfirm - <./../packages/pkglist.txt

yay -S --needed --noconfirm - <./../packages/pkglist_aur.txt

xargs brew install <./../brew_packages.txt
