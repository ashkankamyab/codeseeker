#!/bin/bash

#This script wroten due to performe cehecking availability of HOST through a Private Network
#You may want to modify some line of this script  depends on your Demands
#Powerd by: ashkan.kamyab@gmail.com
#GOOD LUCK
ME=`whoami`
NOW=`date +"%a-%Y\%m\%d-%H:%M"`
mkdir -p /home/$ME/Desktop/NTEST/
ping -c 100 $1 > /home/$ME/Desktop/NTEST/$1_$NOW
clear
sleep 0.3
echo "This Result has been made by NTestv0.9Beta powered by www.isoair.ir" >> /home/$ME/Desktop/NTEST/$1_$NOW
echo "Full log-files are available in NTEST Directory on $ME's Desktop"
echo " "
echo " "
echo "Powered by ashkan.kamyab@gmail.com"
echo " "
sleep 0.6
tail -n 4 /home/$ME/Desktop/NTEST/$1_$NOW
