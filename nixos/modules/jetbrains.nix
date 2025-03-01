{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jetbrains-toolbox
    jetbrains.clion
    jetbrains.pycharm-professional    
    jetbrains.rust-rover
    jetbrains.webstorm
    jetbrains.datagrip
  ];
}
