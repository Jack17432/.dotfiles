{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jetbrains-toolbox
    jetbrains.clion
    jetbrains.pycharm-professional    
  ];
}
