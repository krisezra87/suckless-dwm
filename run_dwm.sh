#!/bin/sh

[ -f ~/.screenlayout/dwm_layout.sh ] && ~/.screenlayout/dwm_layout.sh

feh --bg-fill ~/Pictures/overwatch.png

setxkbmap -option caps:escape

picom &
dunst &

[[ -d $HOME/scripts ]] && export PATH=$HOME/scripts:$PATH
[ -f ~/scripts/dwmbar ] && dwmbar &

# Launch dwm.  If we exit or reload it, we will log out
dwm >/dev/null 2>&1
