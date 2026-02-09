{ inputs, system, ... }:
{
  peter-macbook = import ../../../darwin/hosts/aarch64/peter-macbook {
    inherit inputs system;
  };
}
