#!/bin/sh

killall -SIGUSR2 waybar


pywalfox update


ln -sf    "${HOME}/.cache/wal/dunstrc"    "${HOME}/.config/dunst/dunstrc"

pkill dunst 
dunst &




