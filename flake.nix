{
  description = "NixOS Supermacy System";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    let
      eachSystem = flake-utils.lib.eachDefaultSystem (system:
        let
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
        in {
          packages.default = pkgs.hello;
        });
    in
      eachSystem // {
        nixosConfigurations.supermacy = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
		./hosts/atlas.nix
		./modules/bspwm.nix
		./modules/audio.nix
		./modules/networking.nix
		./users/atlas.nix
          ];
        };
      };
}
