{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    ohMyZsh = {
        enable = true;
        theme = "fino";
        plugins = [
        ];
    };

    autosuggestions.enable = true;
  };

  programs.tmux.enable = true;

  users.defaultUserShell = pkgs.zsh;

  environment.systemPackages = with pkgs; [
    thefuck
  ];
}
