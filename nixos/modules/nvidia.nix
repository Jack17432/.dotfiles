{ config, pkgs, ... }:

{
  services.xserver = {
    xkb.layout = "nz";
    xkb.variant = "";
    videoDrivers = ["nvidia"];
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.production;
  };

  programs.nix-ld.enable = true;

  
  environment.systemPackages = with pkgs; [
    pciutils
    gnumake
    gcc

    cudaPackages.cuda_nvcc
    cudaPackages.cudatoolkit

#    cudatoolkit

#    autoAddDriverRunpath
#    autoFixElfFiles
  ];

  systemd.services.nvidia-control-devices = {
    wantedBy = [
      "multi-user.target"
    ];
  };
}
