{ config, lib, pkgs, ... }:

{

  users.users.nooneknows = {
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [ "wheel" "sudo" ];
    packages = with pkgs; [ ];
  };

}
