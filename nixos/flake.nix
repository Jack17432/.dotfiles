{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @ inputs :
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
	config = {
	  allowUnfree = true;
          cudaSupport = true;
	};
      };
      
    in {
      nixosConfigurations = {
	desktop = nixpkgs.lib.nixosSystem {
	  specialArgs = { inherit inputs system pkgs; };
          modules = [
            ./hosts/desktop/configuration.nix
	        ./home.nix

	        ./modules/hyprland.nix
	        ./modules/nvidia.nix
	        ./modules/jetbrains.nix
	        ./modules/lang.nix
	        ./modules/virt.nix
	        ./modules/games.nix
            ./modules/nvim.nix
            ./modules/term.nix
            ./modules/work.nix
            ./modules/embedded.nix
            ./modules/files.nix
          ];
        };
      };
    };
}
