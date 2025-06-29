{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    # neovim
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/home/packages/headless-devel/neovim/nvim";
  };

}
