#!/bin/bash

# This is the random wallpaper chooser, that fires when user right clicks on waybar image
file="$(find /home/henry/Pictures/lowerResolution/ -type f | shuf -n 3 | shuf -n 1)"
ln -sf "$file" /home/henry/.config/hypr/symlink
awww img "$file" --transition-type grow --transition-fps 60 --transition-duration 2.8
notify-send BEFORE
matugen image "$file" --source-color-index 0
notify-send AFTER
