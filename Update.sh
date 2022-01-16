#!/bin/bash

####
# auto OS updater
####

echo "\e[01;36mChecking for Updates\e[m"
apt-get update &&
echo "\e[01;36mStarting Updates\e[m"
apt-get -y upgrade &&
echo "\e[01;36mChecking for Distro Upgrades and Installing\e[m"
apt-get -y dist-upgrade &&
echo "\e[01;36mChecking for OS Upgrades and Installing\e[m"
# The next two lines are Ubuntu specific
# apt-get install update-manager-core &&
# do-release-upgrade &&
echo "\e[01;36mChecking for and Removing Unneeded Programs\e[m"
apt-get -y autoremove && apt-get -y autoclean && apt-get -y clean &&
echo "\e[01;36mUpgrades Finished"
