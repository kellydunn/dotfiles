[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

xsetroot -cursor_name left_ptr
setxkbmap -layout en
exec xmonad
