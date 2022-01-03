#!/bin/bash

####
# auto OS updater
####

echo "\033[01;36mChecking for Updates\033[00;37m"
apt-get update &&
echo "\033[01;36mStarting Updates\033[00;37m"
apt-get -y upgrade &&
echo "\033[01;36mChecking for Distro Upgrades and Installing\033[00;37m"
apt-get -y dist-upgrade &&
echo "\033[01;36mChecking for OS Upgrades and Installing\033[00;37m"
# The next two lines are Ubuntu specific
# apt-get install update-manager-core &&
# do-release-upgrade &&
echo "\033[01;36mChecking for and Removing Unneeded Programs\033[00;37m"
apt-get -y autoremove && apt-get -y autoclean && apt-get -y clean &&
echo "\033[01;36mUpgrades Finished"
