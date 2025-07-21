{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ lazydocker ];

  programs.lazydocker = {
    enable = true;
  };

}
