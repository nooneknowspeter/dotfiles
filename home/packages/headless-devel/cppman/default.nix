{ pkgs, ... }:
{
  home.packages = with pkgs; [ cppman ];
}
