[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

xsetroot -cursor_name left_ptr
setxkbmap -layout en
exec xmonad

exec feh --bg-center /home/kelly/images/wallpaper/rainbow-nebula.jpg
