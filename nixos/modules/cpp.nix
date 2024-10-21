{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        xorg.libXmu
        xorg.libXi
        libGL

        pcl
        vcpkg
        vcpkg-tool
    ];
}
