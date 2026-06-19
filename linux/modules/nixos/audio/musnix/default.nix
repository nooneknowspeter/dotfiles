{ ... }:
{

  musnix = {
    enable = true;
    kernel = {
      realtime = true;
    };
  };

  users.users.nooneknows.extraGroups = [ "audio" ];

}
