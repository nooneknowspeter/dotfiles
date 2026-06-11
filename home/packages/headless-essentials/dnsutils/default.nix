{ pkgs, ... }:
{
  home.packages = with pkgs; [ dnsutils ];
}
