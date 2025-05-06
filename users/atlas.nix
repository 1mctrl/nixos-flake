{ config, pkgs, ... };

{
users.users.atlas = {
isNormalUser = true;
description = "atlas";
extraGroups = [ "networkmaneger" "wheel" ];
shell = pkg.fish;
packages = with pkgs; [ 
 alacritty
 librewolf
 wofi 
 spotify 
 htop
 telegram-desktop 
 libreoffice 
 cmake
 freecad
 blender
 vscode
 waybar
 nsxiv
 mariadb
 hyprland
 dbus
 cava
 dolphin
 swww
 xdg-desktop-portal
 xdg-desktop-portal-hyprland
 dunst
 gtk3
 clang 
 llvm
 brightnessctl
 pavucontrol
 networkmanager_aplet
 networkmanager_dmenu
 qt5.qtwayland
 qt6.qtwayland 
 ];
};

programs.fish.enable = true;
}
