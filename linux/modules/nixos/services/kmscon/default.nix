{ ... }: {

  services.kmscon = {
    enable = true;
    extraOptions = ''
      --term xterm-256color
    '';
  };

}
