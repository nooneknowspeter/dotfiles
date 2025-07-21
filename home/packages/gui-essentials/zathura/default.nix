{ config, pkgs, ... }:
{

  home.packages = with pkgs; [ zathura ];

  programs.zathura = {
    enable = true;
    extraConfig = ''
      set selection-clipboard clipboard
    '';
    mappings = {
      "[normal] i" = "recolor";
    };
  };

}
