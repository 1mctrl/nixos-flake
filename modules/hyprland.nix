{ config, pkgs, ... };

{
programs.hyprland.enable = true;
programs.waybar.enable = true;

services.displayManager.ly.enable = true;
services.dbus.enable = true;
services.polkit.enable = true;
}
