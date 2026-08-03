#!/bin/bash
# Screenshot a window by clicking on it with visual highlighting

# Get all windows on active workspaces with their geometry
WINDOWS=$(hyprctl clients -j | jq -r ".[] | select(.workspace.id | IN($(hyprctl -j monitors | jq 'map(.activeWorkspace.id) | join(",")' | tr -d '"'))) | \"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])\"")

# If no windows found, exit
if [ -z "$WINDOWS" ]; then
    notify-send "No windows found"
    exit 1
fi

# Use slurp to let user select window (highlights available windows)
SELECTION=$(echo "$WINDOWS" | slurp)

# If selection was cancelled, exit
if [ -z "$SELECTION" ]; then
    notify-send "Selection cancelled"
    exit 1
fi

# Capture the selected area and pipe to swappy
grim -g "$SELECTION" - | swappy -f -

