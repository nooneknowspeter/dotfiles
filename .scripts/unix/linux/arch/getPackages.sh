PKGLIST="$DOTFILES"/.scripts/unix/linux/arch/pkglist.txt
PKGLIST_AUR="$DOTFILES"/.scripts/unix/linux/arch/pkglist_aur.txt
UNIX_PACKAGES="$DOTFILES"/.packages/packages_unix.txt

pacman -Qqen >"$PKGLIST"
pacman -Qqem >"$PKGLIST_AUR"

cat "$PKGLIST" "$PKGLIST_AUR" | sort -u >"$UNIX_PACKAGES"

cat "$UNIX_PACKAGES"
