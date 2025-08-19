{ pkgs, ... }:
{
  home.packages = with pkgs; [
    pipes-rs
  ];
}
