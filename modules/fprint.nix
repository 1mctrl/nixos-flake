{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    sensor = {
      url = "github:ahbnr/nixos-06cb-009a-fingerprint-sensor";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, sensor, ... }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        hostname = lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
            sensor.nixosModules.open-fprintd
            sensor.nixosModules.python-validity
          ];
        };
      };
    };
}

