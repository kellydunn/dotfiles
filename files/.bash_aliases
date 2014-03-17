#! /bin/bash
#

# System aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# misc utilities
alias background='feh --bg-center '
alias screenshot='sleep 15; import -window root screen_shot.png;'

# editor
alias e='emacsclient '
export EDITOR=e

#wifi
wifi() {
  sudo ifconfig wlan0
  sudo iwconfig wlan0 essid $1 key s:$2
  sudo dhclient wlan0
}
