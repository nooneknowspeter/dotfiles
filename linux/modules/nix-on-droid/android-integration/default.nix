{ config, pkgs, ... }:
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

}
