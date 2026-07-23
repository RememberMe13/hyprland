#
# ~/.bash_profile
#
# This checks if WAYLAND_DISPLAY is not set, and if the current tty is 1
# then launches sway
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec start-hyprland
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
