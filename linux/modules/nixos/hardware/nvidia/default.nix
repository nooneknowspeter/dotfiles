{ ... }: {
  hardware.nvidia.modesetting.enable = true;

  boot = {
    initrd.kernelModules =
      [ "nvidia" "i915" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];
    kernelParams = [ "nvidia-drm.fbdev=1" "nvidia-drm.modeset=1" ];
  };
}
