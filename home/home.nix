{ config
, pkgs
, username ? "nooneknows"
, homeDirectory ? "/home/nooneknows"
, ...
}:
{

  imports = [
    ./modules/fonts
    ./modules/nixGL
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
  };
  home.shellAliases = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # enable experimental features; flakes
  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

}
