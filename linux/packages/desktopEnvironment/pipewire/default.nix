{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    pipewire
  ];

  # programs.pipewire = {
  #   enable = true;
  # };

}
