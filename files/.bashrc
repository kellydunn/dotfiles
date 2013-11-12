#! bin/bash

SCREEN_ESC="\[\033k\033\134\]"

[ -z "$PS1" ] && return

HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

PROMPT_SYM="$ "

. ~/.bash_aliases
. ~/.bash_prompt

PLUGINS=("jackd" "rvm" "pyenv" "heroku" "gvm" "cask" "monome" "arm-none-eabi-gcc")

for plugin in "${PLUGINS[@]}"
do
    plugin_path="$HOME/.bash.d/${plugin}"
    test -f $plugin_path && source $plugin_path
done
