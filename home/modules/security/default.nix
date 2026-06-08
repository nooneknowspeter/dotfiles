{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gnupg
    pass
    pinentry-all
    sops
  ];

  programs = {
    gpg = {
      enable = true;
    };
  };

  services = {
    gpg-agent = {
      enable = true;
      pinentry = {
        package = pkgs.pinentry-curses;
      };
    };
  };
}
