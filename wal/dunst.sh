#!/bin/sh



killall -SIGUSR2 waybar

mkdir -p  "${HOME}/.config/dunst"
ln -sf    "${HOME}/.cache/wal/dunstrc"    "${HOME}/.config/dunst/dunstrc"



pkill dunst 
dunst &




