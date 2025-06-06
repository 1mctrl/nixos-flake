{ config, pkgs, ... }:

{
imports = [
  ./hardware-configuration.nix   
   ];


boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;
    

time.timeZone = "Asia/Tashkent";
i18n.defaultLocale = "en_US.UTF-8";

fonts = {
enableDefaultPackages = true;
fontconfig.enable = true;
};

nixpkgs.config.allowUnfree = true;

environment.shellAliases = {
update = "sudo nixos-rebuild switch --flake /etc/nixos#supermacy";
rebuild-boot = "sudo nixos-rebuild boot";
clean-garbage = "sudo nix-collect-garbage -d";
clean-generations = "sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations +3";
};
#
boot.loader.grub.enable = true;
boot.loader.grub.efiSupport = false;
boot.loader.grub.device = "/dev/nvme0n1"; 

services.mysql.enable = true;
services.mysql.package = pkgs.mysql80;

services.fprintd.enable = true;

environment.systemPackages = with pkgs; [
	lsusb
	pkgs.xorg.setxkbmap
	wget
	fprintd
	neovim
	btop
	pkgs.pulsemixer
	pkgs.pamixer
	kitty
	rofi
	xorg.xev
	bspwm
	sxhkd
	flameshot
	polybar
	picom
	feh
	dunst
	librewolf
	proxychains
	bibata-cursors
	(nerdfonts.override {fonts = [ "FiraCode"];})
	git
	fastfetch
	tree
	rustc
	cargo
	dolphin
	mariadb
	shadowsocks-libev
	gcc
	dbeaver-bin
	jdk17
	cryptsetup
	xdg-desktop-portal
	networkmanager
	clang
	emacs
	emacs-nox
	networkmanager_dmenu
	
];

system.stateVersion = "24.11";
security.rtkit.enable = true;
services.printing.enable = true;
}
