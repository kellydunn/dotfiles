#! bin/bash

SCREEN_ESC="\[\033k\033\134\]"
P="\$"

[ -z "$PS1" ] && return

HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

. ~/.bash_aliases

PROMPT_SYM="$ "

. ~/.bash_prompt

PLUGINS=("jackd" "rvm" "pythonbrew" "heroku" "gvm" "carton" "monome" "arm-none-eabi-gcc")

for plugin in "${PLUGINS[@]}"
do
    plugin_path="$HOME/.bash.d/${plugin}"
    test -f $plugin_path && source $plugin_path
done
