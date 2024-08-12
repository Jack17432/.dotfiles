{ inputs, config, pkgs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  users.users.jack = {
    isNormalUser = true;
    description = "Chris Graham";
    extraGroups = [ "libvirtd" "networkmanager" "wheel" "video" "render" "audio" "storage" "docker" ];
    packages = with pkgs; [];
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      jack = import ./users/jack.nix;
    };
  };
}
