{ config, lib, pkgs, ... }:

{
  options = {
    
  };

  config = {
    services.xserver.enable = true;
    services.xserver.windowManager.bspwm.enable = true;
    services.ly.enable = true;

    environment.systemPackages = with pkgs; [
      bspwm
      sxhkd
      xterm
      dmenu
      rofi
      polybar
      picom
    ];

    
    services.xserver.displayManager.startx.enable = true;  
  };
}
