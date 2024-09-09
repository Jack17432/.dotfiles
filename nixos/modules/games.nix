{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        wine64
        lutris

        steam
        prismlauncher
    ];
}
