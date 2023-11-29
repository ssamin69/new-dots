#!/bin/sh

killall -SIGUSR2 waybar


pywalfox update

mkdir -p  "${HOME}/.config/dunst"
ln -sf    "${HOME}/.cache/wal/dunstrc"    "${HOME}/.config/dunst/dunstrc"

pkill dunst 
dunst &




