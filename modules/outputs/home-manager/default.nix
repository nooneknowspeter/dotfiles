{ inputs }:
let
  username = "nooneknows";
in
{
  # headless android development
  "${username}@android" = import ../../../home/homes/android { inherit inputs username; };

  # full linux envirionment
  # desktop environment, dev tools, content creation
  "${username}@linux-full" = import ../../../home/homes/linux-full { inherit inputs username; };

  # headless development
  "${username}@linux-headless" = import ../../../home/homes/linux-headless {
    inherit inputs username;
  };

  # "lite" linux
  # desktop environment, no dev tools
  "${username}@linux-lite" = import ../../../home/homes/linux-lite { inherit inputs username; };

  # macOS
  # desktop environment w/ dev tools
  "${username}@soyboydev" = import ../../../home/homes/soyboy-dev { inherit inputs username; };

  # macOS
  # desktop environmen, no dev tools
  "${username}@soyboylite" = import ../../../home/homes/soyboy-lite { inherit inputs username; };

  # wsl
  "${username}@wsl" = import ../../../home/homes/wsl { inherit inputs username; };
}
