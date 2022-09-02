#!/bin/sh

#Set dwm bar
while true; do	
	xsetroot -name "$(xkb-switch)$(nmcli -f ACTIVE,SIGNAL dev wifi list | grep -m1 yes | awk '{print "   "$2"%"}')   $(top -bn1 | grep Cpu | awk '{printf $2"%"}')   $(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2'})   $(df | grep "/dev/sda1" | awk '{printf $5}')  $(amixer sget Master | grep -e 'Front Left:' | sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off//' | sed 's/on / /' )   $(uptime | sed 's/.*up\s*//' | sed 's/,\s*[0-9]* user.*//')   $(date +'%H:%M')"
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
