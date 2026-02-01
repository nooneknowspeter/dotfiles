{ config, pkgs, ... }:
{

  imports = [
    # headless-devel
    ./asdf-vm
    ./atac
    ./can-utils
    ./docker
    ./gh
    ./glab
    ./ipcalc
    ./ipinfo
    ./just
    ./k9s
    ./lazydocker
    ./lazygit
    ./lazysql
    ./metasploit
    ./neovim
    ./nix-init
    ./nmap
    ./opencode
    ./posting
    ./qemu
    ./termshark
  ];

}
