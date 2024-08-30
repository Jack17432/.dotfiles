{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    ohMyZsh = {
        enable = true;
        theme = "fino";
    };
  };

  programs.tmux.enable = true;

  users.defaultUserShell = pkgs.zsh;
}
