{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ davinci-resolve ];

  # programs.davinci-resolve = {
  #   enable = true;
  # };

}
