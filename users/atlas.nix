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

 	clang 
 	
 	brightnessctl
	pavucontrol
 	networkmanagerapplet
 	networkmanager_dmenu
 
 ];
};
services.docker = {
 enable = true;
 autoStart = true;
};


programs.fish.enable = true;
}
