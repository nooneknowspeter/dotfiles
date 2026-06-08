{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gnupg
    pass
  ];
}
