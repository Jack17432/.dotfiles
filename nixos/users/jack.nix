{ config, pkgs, ... }:

{
  home.username = "jack";
  home.homeDirectory = "/home/jack";
  home.stateVersion = "24.05";

  home.packages = with pkgs; [
  ];

  home.file = {
    ".config/hypr".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/hyprland;
    ".config/waybar".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/waybar;
    ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/nvim;
    ".bashrc".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/.bashrc;
  };

  home.sessionVariables = {};

  programs.home-manager.enable = true;

  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
  };
}
