#!/bin/bash

####
# auto OS updater
####

echo "Checking for Updates"
apt-get update &&
echo "Starting Updates"
apt-get -y upgrade &&
echo "Checking for Distro Upgrades and Installing"
apt-get -y dist-upgrade &&
echo "Checking for OS Upgrades and Installing"
apt-get install update-manager-core &&
do-release-upgrade &&
echo "Checking for and Removing Unneeded Programs"
apt-get -y autoremove && apt-get -y autoclean && apt-get -y clean &&
echo "Upgrades Finished"
