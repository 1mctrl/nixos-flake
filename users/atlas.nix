{ config, pkgs, ... }:


{
users.users.atlas = {
isNormalUser = true;
description = "atlas";
extraGroups = [ "networkmaneger" "wheel" ];
shell = pkgs.fish;
packages = with pkgs; [ 
 	librewolf
 	bspwm
	docker 	 
	spotify 
 	htop
 	telegram-desktop 
	libreoffice 
 	cmake
 	freecad
	blender
	nsxiv
 	mariadb
 	dbus
 	cava
 	dolphin
 	swww
	xdg-desktop-portal
	zip
 	clang 
 	unzip
 	brightnessctl
	pavucontrol
 	networkmanagerapplet
 	networkmanager_dmenu
 
 ];
};





programs.fish.enable = true;
}
