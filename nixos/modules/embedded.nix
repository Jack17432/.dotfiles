{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        openocd
        arduino
    ];
}
