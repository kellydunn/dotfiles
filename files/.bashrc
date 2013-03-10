#! bin/bash
#

RED="\[\033[0;31m\]"
BROWN="\[\033[0;33m\]"
GREY="\[\033[0;97m\]"
GREEN="\[\033[1;32m\]"
BLUE="\[\033[0;34m\]"
PINK="\[\033[0;35m\]"
RESET="\[\033[0m\]"
SCREEN_ESC="\[\033k\033\134\]"
P="\$"

[ -z "$PS1" ] && return

HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

PS1="${GREEN}\u${PINK}❤${RESET} "

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

. ~/.bash_aliases
. ~/.path_config

PLUGINS=("jackd" "rvm" "pythonbrew" "heroku" "gvm" "carton")

for plugin in "${PLUGINS[@]}"
do
    plugin_path="$HOME/.bash.d/${plugin}"
    test -f $plugin_path && source $plugin_path
done
