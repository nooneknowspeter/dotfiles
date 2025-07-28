{ config, pkgs, ... }: {
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

    base16Scheme =
      "${pkgs.base16-schemes}/share/themes/black-metal-dark-funeral.yaml";

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
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        applications = 11;
        desktop = 11;
        terminal = 11;
      };
    };

    iconTheme = {
      enable = true;
      dark = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    image = pkgs.fetchurl {
      # https://github.com/dharmx/walls
      url =
        "https://raw.githubusercontent.com/dharmx/walls/refs/heads/main/manga/a_black_and_white_drawing_of_a_person_holding_a_stick.jpg";
      hash = "sha256-90eUTc9GBf+NWSzKL+AXwCp+kPlaHVx3/tpfAMLrZbQ=";
    };

    opacity = {
      desktop = 0.8;
      popups = 0.8;
    };

  };
}
