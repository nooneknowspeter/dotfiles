{ config, pkgs, ... }: {

  home.packages = with pkgs; [ git ];

  programs.git = { enable = true; };

  home.file.".gitconfig" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/.gitconfig";
  };

}
