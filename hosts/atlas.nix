{ config, pkgs, ... };

{
imports = [
  ./hardware-configuration.nix   
   ];
];

boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
    boot.initrd.luks.devices."luks-054b7665-013f-4eba-b094-be307a8f454f".device = "/dev/disk/by-uuid/054b7665-013f-4eba-b094-be307a8f454f";

time.timeZone = "Asia/Tashkent";
i18n.defaultLocale = "en_US.UTF-8";

fonts = {
enableDefaultPackages = true;
fontconfig.enable = true;
};

nixpkgs.config.allowUnfree = true;

environment.ShellAliases = {
update = "sudo nixos-rebuild switch";
nix-config = "sudo nano /etc/nixos/flake.nix";
hypr-conf = "nano ~/.config/hypr/hyprland.conf";
waybar-config = "nano ~/.config/waybar/config";
waybar-style = "nano ~/.config/waybar/styles.css";
rebuild-boot = "sudo nixos-rebuild boot";
clean-garbage = "sudo nix-collect-garbage -d";
clean-generations = "sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations +3";
my-vps = "ssh debian@162.19.247.71";
};

services.mysql = {
enable = true;
package = pkgs.mariadb;
initialDatabase = [{
name = "supermacy.db"; }];
};

environment.systemPackages = with pkgs; [
 wget
 alacritty
 rofi
 dunst
 librewolf 
 proxychains
 bibata-cursors
(nerdfonts.override { fonts = [ "FiraCode" ]; })
 git
 fastfetch
 tree
 osu-lazer
 rustc
 cargo
 hyprshot
 dolphin
 mako 
 mariadb
 shadowsocks-libev
 qt5.qtwayland
 qt6.qtwayland 
 wl-clipboard
 gcc
 dbeaver-bin 
 jdk17
 cryptsetup 
 xdg-dekstop-portal
 xdg-desktop-portal-wlr
 networkmanager
 clang 
 llvm
 networkmanager-dmenu 
 xdg-desktop-portal-hyprland
 waybar
 swaybg
 wofi
];

system.stateVersion = "24.11";
security.rtkit.enable = true;
services.printing.enable = true;
}
