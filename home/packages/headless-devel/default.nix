{ config, pkgs, ... }: {

  imports = [
    # headless-devel
    ./asdf-vm
    ./can-utils
    ./docker
    ./gh
    ./glab
    ./ipcalc
    ./k9s
    ./lazydocker
    ./lazygit
    ./lazysql
    ./neovim
    ./nmap
    ./posting
    ./qemu
    ./termshark
  ];

}
