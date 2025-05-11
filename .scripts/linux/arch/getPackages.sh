pacman -Qqen >$DOTFILES/.scripts/linux/arch/pkglist.txt
pacman -Qqem >$DOTFILES/.scripts/linux/arch/pkglist_aur.txt

cat $DOTFILES/.scripts/linux/arch/pkglist.txt $DOTFILES/.scripts/linux/arch/pkglist_aur.txt | sort -u >$DOTFILES/.packages/packges_unix.txt
