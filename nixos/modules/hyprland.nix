{ config, pkgs, environment, ... }:

{ 
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
        user = "jack";
      };
    };
  };

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
    greetd.tuigreet
    hyprlock
  ];

  programs.tmux.enable = true;
  programs.zsh.enable = true;
  programs.zsh.ohMyZsh.enable = true;

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}
