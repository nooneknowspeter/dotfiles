{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ linux-wallpaperengine ];

  services.linux-wallpaperengine = {
    enable = true;
  };

}
