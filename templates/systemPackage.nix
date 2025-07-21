{
  config,
  lib,
  pkgs,
  ...
}:
{

  environment.systemPackages = with pkgs; [ ];

  programs.program = {
    enable = true;
  };

}
