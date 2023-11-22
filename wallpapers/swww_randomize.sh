#!/usr/bin/env bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

current="$(swww query | grep -o -m 1 -P '(?<=image: ).*')"
files=($(find "${SCRIPT_DIR}"/wallpapers/ -type f))
files=(${files[@]/$current})

if [ ${#files[@]} -ge 1 ]; then
  random="${files[RANDOM % ${#files[@]}]}"
  swww img "${random}" --transition-type center
  wal -i "${random}" -o /home/samething/.config/wal/dunst.sh
else
  printf "it was not possible to change the wallpaper because it is either missing or such wallpaper is already installed"
fi


