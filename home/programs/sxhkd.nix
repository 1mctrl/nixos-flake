{ config, pkgs, ... }:

{
  xdg.configFile."sxhkd/sxhkdrc" = {
    text = ''
      super + Return
          kitty

      super + Escape
          bspc wm -r

      super + r
          rofi -show drun

      super + shift + q
          bspc node -c

      super + {1-9}
          bspc desktop -f ^{1-9}

      super + shift + {1-9}
          bspc node -d ^{1-9}

      Print
          flameshot gui

      super + {h,j,k,l}
          bspc node -f {west,south,north,east}

      super + shift + {h,j,k,l}
          bspc node -s {west,south,north,east}

      F1
          pamixer -t

      F2
          pamixer -d 5

      F3
          pamixer -i 5

      F10
          blueman-manager
    '';
 executable = true;

  };
}
