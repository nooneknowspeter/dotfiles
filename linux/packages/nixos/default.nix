{ config, pkgs, ... }:

{
  imports = [ ./openrazer ./sbctl ./steam-run ];
}
