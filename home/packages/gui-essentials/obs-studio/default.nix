{ config, pkgs, ... }: {

  home.packages = with pkgs;
    [
      # obs-studio
      obs-cli
    ];

  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [ wlrobs ];
  };

  # programs.obs-cli = {
  #   enable = true;
  # };

}
