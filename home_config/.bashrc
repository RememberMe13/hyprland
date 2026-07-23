#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fastfetch

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cdd='cd ~/Downloads'
alias code='codium'
alias open='xdg-open'
alias untar='tar -xf'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Runs'
alias todo='tuxedo ~/Documents/todo.txt'
alias pipes='~/.config/sway/scripts/pipes.sh'
alias umlet='_JAVA_AWT_WM_NONREPARENTING=1 _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on" /usr/bin/umlet'
alias gs='git status'
alias ga='git add -A'
alias gc='git commit'
alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME'



[ -f ~/.bash_colors ] && source ~/.bash_colors
