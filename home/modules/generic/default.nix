{
  inputs,
  config,
  pkgs,
  ...
}:
{
  targets = {
    genericLinux = {
      enable = true;
      gpu = {
        enable = true;
      };
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
    };
  };
}
