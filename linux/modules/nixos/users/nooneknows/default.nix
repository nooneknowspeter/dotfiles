{ pkgs, ... }:
{

  users.users.nooneknows = {
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "sudo"
      "input"
    ];
    packages = with pkgs; [ ];
  };

}
