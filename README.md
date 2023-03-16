# Debian Commandline Updater

## Information
This is my personal update for Debian-based distros. It should work on other Linux distros that use aptitude for program management.

## How to install
Place this file in your ```$HOME``` directory.  
Then add the lines below to either your ```~/.bashrc``` or ```~/.profile```.
```
# Update shortcut
alias update='sudo sh ~/Update.sh'
```

## How to use
To run this file, in a command prompt, type ```update``` and press Enter. It will ask you for your sudo password, and then it will run a full upgrade and then do the cleanup work.
