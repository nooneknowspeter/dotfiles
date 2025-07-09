{ config, pkgs, ... }: {

  programs.dconf.enable = true;

  users.users.nooneknows.extraGroups = [ "libvirtd" "docker" ];

  environment.systemPackages = with pkgs; [
    docker
    spice
    spice-gtk
    spice-protocol
    virt-manager
    virt-viewer
    win-spice
    win-virtio
  ];

  virtualisation = {
    docker = {
      enable = true;
      enableOnBoot = true;
    };
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
  };

  services.spice-vdagentd.enable = true;

  hardware.nvidia-container-toolkit.enable = true;

}
