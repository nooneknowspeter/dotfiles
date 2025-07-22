{ inputs
, config
, pkgs
, ...
}:
{
  nixGL = {
    # packages = inputs.nixGL.packages;
    defaultWrapper = "mesa";
    installScripts = [
      "mesa"
      "mesaPrime"
      "nvidia"
      "nvidiaPrime"
    ];
    prime = {
      installScript = "mesa";
    };
    vulkan.enable = true;
  };
}
