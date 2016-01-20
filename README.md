UCIenablerOutLogin
==================

At the UC Canterbury we need to login once a day with our username and password to use the internet. This is a casperjs (based on nodejs and phantomjs) that goes thought this process automatically. The command will be called every 6 hours.


Install
--------
- run the install.sh script with `./install.sh`
- IMPORTANT: Run command only 1 time, don't make mistakes!!!


Trouble shooting
----------
- I made a mistake. E.g wrong username or password
- Open your crontable with `crontab -u $USER -e`
- Delete everyting in it. (BTW: Nano is the best choice as a editor)
- save with `^x` (Ctrl + x)
- press `y` for save
- press `enter`
