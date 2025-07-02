{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ scope-tui ];

}
