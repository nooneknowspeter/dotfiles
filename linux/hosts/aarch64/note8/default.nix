{config, pkgs, ...}:
{

  android-integration = {
    termux-open.enable = true;
    termux-open-url.enable = true;
    termux-reload-settings.enable = true;
    termux-wake-lock.enable = true;
    termux-wake-unlock.enable = true;
    termux-setup-storage.enable = true;
    xdg-open.enable = true;
  };

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  terminal = {
    font = "${pkgs.nerd-fonts.fira-code}/share/fonts/truetype/FiraCodeNerdFont-Regular.ttf";
  };

  time.timeZone = "US/Eastern";

  user = {
    shell = pkgs.zsh;
    userName = "nooneknows";
  };
}
