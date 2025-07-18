{ config, lib, pkgs, ... }: {

  imports = [ ./thinkfan ./greetd ./libinput ./openrgb ./printing ./ssh ];

}
