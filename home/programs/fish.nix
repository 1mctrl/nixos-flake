{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
     update = "sudo nixos-rebuild switch --flake /etc/nixos#supermacy";
fetch = "fastfetch --load-config ~/.config/fastfetch/config.json";
rebuild-boot = "sudo nixos-rebuild boot";
clean-garbage = "sudo nix-collect-garbage -d";
clean-generations = "sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations +3";
    };
  };
}
