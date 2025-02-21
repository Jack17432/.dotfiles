{ pkgs, ... }:

{
    programs = {
        tmux.enable = true;

        zsh = {
            enable = true;
            ohMyZsh = {
                enable = true;
                theme = "fino";
                plugins = [
                   # direnv
                ];
            };
            autosuggestions.enable = true;
        };
        direnv = {
            enable = true;
            enableBashIntegration = true; # see note on other shells below
            nix-direnv.enable = true;
        };
    };

    users.defaultUserShell = pkgs.zsh;

    environment.systemPackages = with pkgs; [
        thefuck
    ];
}
