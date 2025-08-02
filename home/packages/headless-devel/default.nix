{ config, pkgs, ... }:
{

  imports = [
    # headless-devel
    ./asdf-vm
    ./can-utils
    ./docker
    ./gh
    ./glab
    ./ipcalc
    ./ipinfo
    ./k9s
    ./lazydocker
    ./lazygit
    ./lazysql
    ./metasploit
    ./neovim
    ./nix-init
    ./nmap
    ./posting
    ./qemu
    ./termshark
  ];

}
