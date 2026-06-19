{ inputs, system }:
{
  peter-l390 = import ../../../linux/hosts/x86-64/peter-l390 { inherit inputs system; };

  peter-legion = import ../../../linux/hosts/x86-64/peter-legion { inherit inputs system; };
}
