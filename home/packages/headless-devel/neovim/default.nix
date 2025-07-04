{ config, pkgs, ... }: {

  home.packages = with pkgs;
    [
      # neovim
    ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [ curl git gnutar gzip imagemagick unzip ];
  };

  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/nvim";
  };

}
