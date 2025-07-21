{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ asdf-vm ];

  # programs.asdf-vm = {
  #   enable = true;
  # };

}
