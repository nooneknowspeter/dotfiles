{ config, lib, pkgs, ... }:
{

  imports = [ 
    ./greetd
    ./libinput
    ./openrgb
    ./printing
    ./ssh
  ];

}
