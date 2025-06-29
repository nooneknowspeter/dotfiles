{ config, pkgs, ... }: {

  home.packages = with pkgs; [ gawkInteractive ];

  # programs.gawkInteractive = {
  #   enable = true;
  # };

}
