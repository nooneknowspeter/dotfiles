{ config, pkgs, ... }: {

  home.packages = with pkgs; [ ripgrep ripgrep-all ];

  programs.ripgrep = { enable = true; };

  programs.ripgrep-all = { enable = true; };

}
