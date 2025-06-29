{ config, pkgs, dotfiles, ... }:
{

  home.packages = with pkgs; [
    # neovim
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/configs/nvim";
    # recursive = true;
  };

}
