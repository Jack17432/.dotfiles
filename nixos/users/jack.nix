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
        ".config/rofi".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/rofi;
        ".config/dunst".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/dunst;
        ".config/just/justfile".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/term/justfile;
        ".bashrc".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/term/.bashrc;
        ".zshrc".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/term/.zshrc;
        ".ideavimrc".source = config.lib.file.mkOutOfStoreSymlink /home/jack/.dotfiles/nvim/.ideavimrc;
    };

    home.sessionVariables = { 
        NIXOS_OZONE_WL = "1";
    };

    programs.home-manager.enable = true;

    dconf.settings = {
        "org/virt-manager/virt-manager/connections" = {
            autoconnect = ["qemu:///system"];
            uris = ["qemu:///system"];
        };
    };
}
