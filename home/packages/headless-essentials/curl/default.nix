{ config, pkgs, ... }: {

  home.packages = with pkgs; [ curl ];

  # programs.curl = {
  #   enable = true;
  # };

}
