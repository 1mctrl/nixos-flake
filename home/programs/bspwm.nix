{ config, pkgs, ... }:

{
  xdg.configFile."bspwm/bspwmrc" = {
    text = ''
#!/bin/sh

picom --config ~/.config/picom/picom.conf &
kitty &
sxhkd &
feh --bg-scale ~/Downloads/wp3164319.png  &
setxkbmap -layout us,ru -option 'grp:alt_shift_toggle' &


bspc monitor -d I II III IV V VI VII VIII 

bspc config focus_follows_pointer true
bspc config border_width 2
bspc config window gap 5

bspc config normal_border_color "#2e3440"
bspc config active_border_color "#81a1c1"
bspc config focused_border_color "#88c0d0"
bspc config presel_feedback_color "#bf616a"

bspc config spilt_ratio 0.52
bspc config borderless_monocle true
bspc config gapless_monocle true

bspc rule -a kitty state=tiled
    '';
    executable = true;
  };
}
