{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ atac ];

  home.sessionVariables = {
    ATAC_KEY_BINDINGS = "$HOME/dotfiles/configs/atac/keybindings.toml";
  };
}
