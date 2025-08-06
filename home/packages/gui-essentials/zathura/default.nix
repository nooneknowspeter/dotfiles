{
  config,
  lib,
  pkgs,
  ...
}:
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
    options = lib.mkForce {
      recolor-darkcolor = "#FFFFFF";
      recolor-lightcolor = "#000000";
    };
  };

}
