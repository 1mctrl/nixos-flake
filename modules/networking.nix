{ config, pkgs, ... }:
 
{
networking.hostName = "atlas";
networking.networkmanager.enable = true;
services.openssh.enable = true;

hardware.bluetooth.enable = true;
services.blueman.enable = true;
}
