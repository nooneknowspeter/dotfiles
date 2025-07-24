{ config, pkgs, ... }: {

  home.packages = with pkgs; [ ideviceinstaller ifuse usbmuxd ];

}
