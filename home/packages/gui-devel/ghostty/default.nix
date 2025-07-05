{ inputs, config, pkgs, ... }: {

  home.packages = with pkgs;
    [
      # ghostty
    ];

  programs.ghostty = {
    enable = true;
    package =
      inputs.ghostty.packages.${pkgs.stdenv.hostPlatform.system}.ghostty-releasefast;
  };

  home.file.".config/ghostty" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/dotfiles/configs/ghostty";
  };

}
