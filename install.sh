#!/bin/bash
sudo apt-get install npm
sudo npm install -g casperjs
echo "--------------------";


mainCommand="casperjs "$PWD"/ienabler.js --username="${1}" --password="${2}
echo $mainCommand

multibe="0 */6 * * * ""\""$mainCommand"\""
#echo "$juhu" > "test.txt"
(crontab -u $USER -l; echo "$multibe" ) | crontab -u $USER -

reboot="@reboot ""\""$mainCommand"\""
(crontab -u $USER -l; echo "$reboot" ) | crontab -u $USER -



echo "--------------------";