#!/usr/bin/env bash

echo -e "\e[34m
                     -
                    -o+
                   \`ooo/
                  \`+oooo:
                 \`+oooooo:
                 -+oooooo+:
               \`/:--:++oooo+:
              \`/++++/++++++/:
             \`/++++++++++++++:
            \`/+++ooooooooooooo/
           ./ooosssso++osssssso+
          .oossssso-''''/ossssss+
         -osssssso.      :ssssssso.
        :osssssss/        osssso++.
       /ossssssss/        +ssssooo/
     \`/ossssso+/:-        -:/+ossss'-
    \`+sso+:-\`             \`.-/+oso:
   \`++:.so                       \`-/+/
  .\`                                 \`
\e[0m"

export DOTFILES=~/dotfiles
export ARCH_BOOTSTRAP_SCRIPTS=~/dotfiles/linux/scripts/arch
export NIX_INSTALL_SCRIPT=~/dotfiles/linux/scripts/install-nix.sh

chmod +x ~/dotfiles/linux/scripts/*.sh
chmod +x ~/dotfiles/linux/scripts/arch/*.sh

echo -e "installing curl\n"
"${ARCH_BOOTSTRAP_SCRIPTS}/install-curl.sh"

echo -e "installing and changing default shell to zsh\n"
"${ARCH_BOOTSTRAP_SCRIPTS}/install-zsh.sh"

echo -e "install yay\n"
"${ARCH_BOOTSTRAP_SCRIPTS}/install-yay.sh"

echo -e "install nix multi-user\n"
"${NIX_INSTALL_SCRIPT}"

echo -e "bootstraping home-manager headless linux environment\n"
"${ARCH_BOOTSTRAP_SCRIPTS}/setup-home.sh"
