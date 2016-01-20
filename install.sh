#!/bin/bash
echo "This script will start ienabler on your pc every 6h and on startup. Please use this script only once to install."

echo ""
echo "TROUBLE SHOOTING: use command 'crontab -e' and delete all lines which include 'ienabler'"

read -p "Do you want to continue? [y/n]" goon

echo ""


if [ "$goon" = "n" ]; then
    echo "you stopped"
    exit
fi

read -p "enter your UC username: " ucusername
read -s -p "enter your UC password: " ucpassword
sleeptime=3
 
mainCommand="{ echo $ucusername; sleep $sleeptime; echo $ucpassword; sleep $sleeptime; echo "1"; sleep $sleeptime; } |  telnet ienabler 259"

echo $mainCommand

multibe="0 */6 * * * ""\""$mainCommand"\""
(crontab -l; echo "$multibe" ) | crontab -

reboot="@reboot ""\""$mainCommand"\""
(crontab -l; echo "$reboot" ) | crontab -
