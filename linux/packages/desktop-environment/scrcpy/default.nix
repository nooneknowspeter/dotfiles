{ config, pkgs, ... }:

{

  home.packages = with pkgs; [ scrcpy ];

}
