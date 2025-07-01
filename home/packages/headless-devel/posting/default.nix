{ config, pkgs, ... }: {

  home.packages = with pkgs; [ posting ];

  home.file.".config/posting" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/posting";
  };

}
