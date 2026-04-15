{
  config,
  lib,
  pkgs,
  ...
}:
{

  services.greetd = {
    enable = true;
    useTextGreeter = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd niri-session";
        user = "nooneknows";
      };
    };
  };

}
