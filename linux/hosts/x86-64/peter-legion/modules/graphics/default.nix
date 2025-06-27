{ config, lib, pkgs, ... }:

{
  # Enable OpenGL
  hardware.graphics = {
    enable = true; 
  };

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;

    # Nvidia power management. Experimental, and can cause sleep/suspend to
    # fail.
    # Enable this if you have graphical corruption issues or
    # application crashes after waking
    # up from sleep. This fixes it by saving the entire VRAM
    # memory to /tmp/ instead 
    # of just the bare essentials.
    powerManagement = {
      enable = true;
      finegrained = true;
    };

    # Use the NVidia open source kernel module (not to be confused with the
    # independent third-party "nouveau" open source driver).
    # An important note to take is that the option hardware.nvidia.open should
    # only be set to false if you have a GPU with an older architecture than
    # Turing (older than the RTX 20-Series).
    # Support is limited to the Turing and later architectures.
    # Full list of supported GPUs is at: 
    # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus 
    # Only available from driver 515.43.04+
    open = true;
        
    # Enable the Nvidia settings menu,
    # accessible via `nvidia-settings`.
    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
