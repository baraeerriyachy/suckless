#!/bin/sh

#Set dwm bar
while true; do	
	xsetroot -name " $(cat /sys/class/net/wlp0s26f7u3/operstate | grep down | awk '{print " "$1}')$(nmcli -f ACTIVE,SIGNAL dev wifi list | grep -m1 yes | awk '{print " "$2"%"}')   $(top -bn1 | grep Cpu | awk '{printf $2"%"}')   $(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2'})   $(df -Ph | grep "/dev/sda3" | awk '{printf "%.2f%%", $3*100/$4}')  $(amixer sget Master | grep -e 'Front Left:' | sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off//' | sed 's/on / /' )   $(uptime | sed 's/.*up\s*//' | sed 's/,\s*[0-9]* user.*//' | sed 's/  / /g')   $(date +'%H:%M')"
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
