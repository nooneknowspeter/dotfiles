{ config, pkgs, ... }: {

  # https://github.com/NixOS/nixpkgs/issues/251551
  home.packages = with pkgs; [ houdini ];

}
