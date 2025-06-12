{ config, pkgs, ... }:

{
  home.username = "atlas";
  home.homeDirectory = "/home/atlas";
  home.stateVersion = "24.05";

  imports = [
    ./programs/fish.nix
    ./programs/bspwm.nix
    ./programs/sxhkd.nix
    
  ];

  home.packages = with pkgs; [ feh  ];
}
