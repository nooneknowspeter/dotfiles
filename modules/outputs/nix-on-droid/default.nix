{
  inputs,
  system,
  pkgs,
  ...
}:
{
  note8 = import ../../../linux/hosts/aarch64/note8 { inherit inputs system pkgs; };
}
