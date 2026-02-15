{ config, pkgs, ... }:
{
  stylix = {

    enable = true;

    autoEnable = true;

    targets = {
      # btop.enable = false;
      ghostty.enable = false;
      k9s.enable = false;
      neovim.enable = false;
      wezterm.enable = false;
      vscode.enable = false;
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/black-metal-dark-funeral.yaml";

    polarity = "dark";

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 16;
    };

    fonts = {
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };

      monospace = {
        package = pkgs.nerd-fonts.fira-code;
        name = "FiraCode Nerd Font";
      };

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        applications = 11;
        desktop = 11;
        terminal = 11;
      };
    };

    icons = {
      enable = true;
      dark = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    image = pkgs.fetchurl {
      # https://github.com/dharmx/walls
      url = "https://raw.githubusercontent.com/dharmx/walls/refs/heads/main/monochrome/a_black_and_white_image_of_a_hill.jpg";
      hash = "sha256-Y+D/4GqOuxmg74oHmVRLtu37PFyaDqtfnXjsAQOGUUo=";
    };

    opacity = {
      desktop = 0.8;
      popups = 0.8;
    };

  };
}
