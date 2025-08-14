{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ atac ];

  home.sessionVariables = {
    ATAC_KEY_BINDINGS = "/home/nooneknows/dotfiles/configs/atac/keybindings.toml";
  };
}