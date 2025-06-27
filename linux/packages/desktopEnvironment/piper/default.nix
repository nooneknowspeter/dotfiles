{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    libratbag
    piper
  ];

}
