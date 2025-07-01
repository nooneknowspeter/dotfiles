{ config, pkgs, ... }: {

  home.packages = with pkgs; [
    btop
    btop-cuda
    # btop-rocm
  ];

  programs.btop = { enable = true; };

  home.file.".config/btop" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/btop";
  };

}
