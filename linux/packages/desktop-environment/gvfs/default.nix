{ config, pkgs, ... }: {

  home.packages = with pkgs; [ gnome.gvfs ];

}
