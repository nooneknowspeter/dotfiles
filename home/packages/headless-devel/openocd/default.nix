{ pkgs, ... }:
{
  home.packages = with pkgs; [
    openocd
  ];
}
