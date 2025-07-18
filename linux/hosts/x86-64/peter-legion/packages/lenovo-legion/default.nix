{ config, pkgs, ... }: {

  environment.systemPackages = with pkgs; [ dmidecode lenovo-legion mokutil ];

}
