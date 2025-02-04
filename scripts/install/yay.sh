# install yay
cd || return

sudo pacman -Syyu --noconfirm

sudo pacman -S --needed git base-devel

git clone https://aur.archlinux.org/yay.git

cd yay || return

makepkg -si

sudo pacman -Syyu --noconfirm
