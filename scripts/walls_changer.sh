#!/bin/bash


while true; do

 awww img "$(find ~/Pictures/Walls -type f | shuf -n 1)" --transition-type random --transition-duration 15

 awww query | awk -F'image: ' '{print $2}' | cut -d',' -f1>/home/whoami/.cache/wal/wal

 wal -i "$(cat ~/.cache/wal/wal)" --cols16 darken --contrast 5 --saturate -1.5 --backend colorthief

 matugen image "$(cat ~/.cache/wal/wal)" -m dark -v --prefer darkness --contrast -1

 ln -sf "$(cat ~/.cache/wal/wal)" ~/Pictures/image.png

 sleep 600

done
