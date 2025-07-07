{ config, pkgs, ... }: {

  home.packages = with pkgs; [ cardinal yabridge yabridgectl ];

}
