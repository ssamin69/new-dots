#!/bin/bash

wal=()
for file in *.jpg
do
  wal=("${wal[@]}" "$file")
done

scpt_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
current="$(swww query | grep -o -m 1 -P '(?<=image: ).*')"
wal_dir=()
for i in ${wal[@]}
do 
  wal_dir=("${wal_dir[@]}" "$scpt_dir/$i")

done
len=${#wal_dir[*]}
for ((j=0;j<len;j++))
do 
  if [[ "${wal_dir[j]}" == "$current" ]]
  then
    ((j=j+1))
    if [[ $j -ge $len ]]
    then 
      swww img "${wal_dir[0]}"  --transition-step 110 --transition-type center --transition-fps 24
      wal -i "${wal_dir[0]}" -o /home/samething/.config/wal/dunst.sh
      break
    else 
    swww img "${wal_dir[j]}"  --transition-step 110 --transition-type center --transition-fps 24
    wal -i "${wal_dir[j]}" -o /home/samething/.config/wal/dunst.sh
    break 
  fi  
  fi 
done 

