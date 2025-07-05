{ config, pkgs, ... }: {

  android-integration = {
    termux-open.enable = true;
    termux-open-url.enable = true;
    termux-reload-settings.enable = true;
    termux-wake-lock.enable = true;
    termux-wake-unlock.enable = true;
    termux-setup-storage.enable = true;
    xdg-open.enable = true;
  };

  nix = { extraOptions = "experimental-features = nix-command flakes"; };

  system.stateVersion = "24.05";

  terminal = {
    font =
      "${pkgs.nerd-fonts.fira-code}/share/fonts/truetype/FiraCodeNerdFont-Regular.ttf";
    colors = {
      background = "#000000";
      foreground = "#c1c1c1";
      cursor = "#c1c1c1";
      color0 = "#000000";
      color1 = "#5f8787";
      color2 = "#d0dfee";
      color3 = "#5f81a5";
      color4 = "#888888";
      color5 = "#999999";
      color6 = "#aaaaaa";
      color7 = "#c1c1c1";
      color8 = "#333333";
      color9 = "#5f8787";
      color10 = "#d0dfee";
      color11 = "#5f81a5";
      color12 = "#888888";
      color13 = "#999999";
      color14 = "#aaaaaa";
      color15 = "#c1c1c1";
    };
  };

  time.timeZone = "US/Eastern";

  user = {
    # FIX: increase slow load up times
    # shell = pkgs.zsh;
    userName = "nooneknows";
  };

}
