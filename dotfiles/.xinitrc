#!/bin/sh

#Set time
while true; do
	sh ~/.xsetroot.sh
	sleep 1s
done &

#Set a wallpaper
~/.fehbg &

#For activate audio
start-pulseaudio-x11 

#Set transparency
xcompmgr -n &

#Start dwm
exec dwm


