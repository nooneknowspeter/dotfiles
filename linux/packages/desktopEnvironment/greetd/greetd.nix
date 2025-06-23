{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    greetd.greetd
  ];

  programs.greetd.greetd = {
    enable = true;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "hyprland";
        user = "nooneknows";
      };
    };
  };

}
