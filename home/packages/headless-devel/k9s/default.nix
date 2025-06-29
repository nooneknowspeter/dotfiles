{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    k9s
  ];

  programs.k9s = {
    enable = true;
  };

  home.file.".config/k9s" = {
    source = config.lib.file.mkOutOfStoreSymlink /home/nooneknows/dotfiles/home/packages/headless-devel/k9s/k9s;
  };

}
