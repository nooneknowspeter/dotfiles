{ config, lib, pkgs, ... }: {

  users.users.nooneknows = {
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [ "wheel" "sudo" "audio" ];
    packages = with pkgs; [ ];
  };

}
