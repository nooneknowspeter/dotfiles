{
  config,
  lib,
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [
    yazi
    exiftool
  ];

  programs.yazi = {
    enable = true;
    settings = {
      yazi = lib.importTOML ../../../../configs/yazi/settings.toml;
      # keymap = lib.importTOML ./keymap.toml;
      #theme = lib.importTOML ./theme.toml;
    };
  };

}
