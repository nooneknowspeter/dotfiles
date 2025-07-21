{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ nix-init ];

  programs.nix-init = {
    enable = true;
    settings = {
      maintainers = [ "nooneknowspeter" ];
    };
  };

}
