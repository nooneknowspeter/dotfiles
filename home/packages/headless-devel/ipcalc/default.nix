{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ ipcalc ];

  # programs.ipcalc = {
  #   enable = true;
  # };

}
