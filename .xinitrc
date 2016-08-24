#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

export GTK_THEME=Adwaita
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

xset r rate 200 30

xset fp+ $HOME/.fonts/misc
xset fp+ $HOME/.fonts/ohsnap 
xset fp+ $HOME/.fonts/terminesspowerline

#exec gnome-session
#exec i3 -V >> ~/.i3/i3log 2>&1
exec i3 -c ~/.i3/config
# exec awesome
# exec startkde
# exec startxfce4

