{ config, pkgs, ... }: {

  home.packages = with pkgs; [ openssh ];

  # programs.openssh = {
  #   enable = true;
  # };

}
