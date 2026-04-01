{ ... }:
{

  musnix = {
    enable = true;
    kernel = {
      realtime = false;
    };
  };

  users.users.nooneknows.extraGroups = [ "audio" ];

}
