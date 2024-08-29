{ config, pkgs, environment, ... }:

{ 
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    waybar
    dunst
    libnotify
    rofi-wayland
    swww
    networkmanagerapplet
    home-manager
    pavucontrol
    blueman
  ];

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}
