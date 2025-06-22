{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    nvitop
  ];

  programs.nvitop = {
    enable = true;
  };

}
