#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

export PATH=$PATH:~/.bin/scripts
export PATH=$PATH:~/.local/bin

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#twm &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
compton -bf --blur-method kawase --blur-strength 9 --backend glx --blur-background -O 0.15 -D 6 &
~/.fehbg &
rm -rf /home/jack/tmp && mkdir /home/jack/tmp &
exec --no-startup-id i3-msg 'workspace 1; exec alacritty; workspace 2; exec chromium; workspace 1' &
exec i3
