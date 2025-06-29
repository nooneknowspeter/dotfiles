{ config, pkgs, ... }: {

  home.packages = with pkgs; [ cbonsai ];

  # programs.cbonsai = {
  #   enable = true;
  # };

}
