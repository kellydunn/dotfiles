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
alias background='xloadimage -default -tile '
alias screenshot='sleep 15; import -window root screen_shot.png;'

# opening things
alias go='gnome-open '

# editor
alias e='emacs -nw'
export EDITOR="emacs -nw "