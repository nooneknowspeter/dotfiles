{
  config,
  pkgs,
  username ? "nooneknows",
  homeDirectory ? "/home/nooneknows",
  ...
}:
{

  imports = [
    ./modules/fonts
    ./modules/nix
    ./modules/generic
    ./modules/nixpkgs
    ./modules/stylix
    ./modules/xdg
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = username;
  home.homeDirectory = homeDirectory;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "brave";
  };
  home.shellAliases = {
    EDITOR = "nvim";
    BROWSER = "brave";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
