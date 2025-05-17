{ config, pkgs, ... }:


{
users.users.atlas = {
isNormalUser = true;
description = "luna";
extraGroups = [ "networkmaneger" "wheel" ];
shell = pkgs.fish;
packages = with pkgs; [ 
 	librewolf
 	bspwm
 	wofi 
	spotify 
 	htop
 	telegram-desktop 
 #	libreoffice 
 	cmake
 	#freecad
 #	blender
	nsxiv
 	mariadb
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
 	networkmanagerapplet
 	networkmanager_dmenu
 	qt5.qtwayland
 	qt6.qtwayland 
 ];
};

programs.fish.enable = true;
}
