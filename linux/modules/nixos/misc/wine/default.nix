{ ... }:
{
  hardware = {
    graphics.enable32Bit = true;
  };

  systemd.settings.Manager = {
    DefaultLimitNOFILE = 524288;
  };

  security.pam.loginLimits = [
    {
      domain = "nooneknows";
      type = "hard";
      item = "nofile";
      value = "524288";
    }
  ];
}
