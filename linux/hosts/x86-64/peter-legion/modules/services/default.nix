{ config, lib, pkgs, ... }:

{

  # printing
  services.printing.enable = true;

  # enable touchpad
  services.libinput.enable = true;

  # greetd
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd hyprland";
        user = "nooneknows";
      };
    };
  };

  # ssh
  services.openssh.enable = true;

  # Enable sound.
  # services.pulseaudio.enable = true;
  # OR
  # services.pipewire = {
  #   enable = true;
  #   pulse.enable = true;
  # };

}
