{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    # neovim
  ];

  programs.neovim = {
    enable = true;
    package = pkgs.neovim-unwrapped;
    defaultEditor = true;
    extraPackages = with pkgs; [
      curl
      git
      gnutar
      gzip
      imagemagick
      ripgrep
      unzip
    ];
    withNodeJs = true;
    withPython3 = true;
    withRuby = true;

    # https://github.com/ryan4yin/nix-config/blob/main/home/base/tui/editors/neovim/default.nix
    extraWrapperArgs = with pkgs; [
      "--suffix"
      "LIBRARY_PATH"
      ":"
      "${lib.makeLibraryPath [
        cargo
        go
        openssl
        pkg-config
        python3
        rustc
        rustup
        stdenv.cc.cc
        zlib
      ]}"
      "--suffix"
      "PKG_CONFIG_PATH"
      ":"
      "${lib.makeSearchPathOutput "dev" "lib/pkgconfig" [
        cargo
        go
        openssl
        pkg-config
        python3
        rustc
        rustup
        stdenv.cc.cc
        zlib
      ]}"
    ];
  };

  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/nvim";
  };

}
