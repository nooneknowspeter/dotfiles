{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    btop
    btop-cuda
    # btop-rocm
  ];

  programs.btop = {
    enable = true;
    settings = {
      # color_theme = "TTY";
      theme_background = false;
      truecolor = true;
      force_tty = false;
      vim_keys = true;
      rounded_corners = true;
      graph_symbol = "braille";
      update_ms = 100;
      shown_boxes = "cpu mem net proc gpu0";
      background_update = false;
    };
  };

  # home.file.".config/btop" = {
  #   source = config.lib.file.mkOutOfStoreSymlink
  #     "${config.home.homeDirectory}/dotfiles/configs/btop";
  # };

}
