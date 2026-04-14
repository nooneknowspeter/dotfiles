{
  config,
  inputs,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    alacritty
    niri
    fuzzel
  ];

  programs = {
    swaylock = {
      enable = true;
    };
  };

  services = {
    gnome-keyring = {
      enable = true;
    };

    mako = {
      enable = true;
    };

    polkit-gnome = {
      enable = true;
    };
  };

  home.file.".config/niri" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/niri";
  };
}
