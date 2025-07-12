{ config, pkgs, ... }: {

  home.packages = with pkgs; [ duf ];

}
