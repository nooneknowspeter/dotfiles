{ pkgs, ... }:
{

  services.sunshine = {
    enable = true;
    autoStart = true;
    capSysAdmin = true;
    openFirewall = true;

    package = pkgs.sunshine.override {
      cudaSupport = true;
      cudaPackages = pkgs.cudaPackages;
    };
  };

  services.udev.extraRules = ''
    		KERNEL=="uinput", MODE="0660", GROUP="input", SYMLINK+="uinput"
    	'';

}
