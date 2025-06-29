{ config, pkgs, ... }: {

  home.packages = with pkgs; [ ardour ];

  # programs.ardour = {
  #   enable = true;
  # };

}
