#!/bin/bash

clear

echo "Hello, what is your name?"
read name
echo "Very nice to meet, you, $name"

welcome="Welcome! This BASH script does update and upgrade."

LOGFILE="update.log" # put the full path here if log files are in a separate directory

# several ways to timestamp; here is one way and you can change the order easily
# these are called backticks: `` they are left side of keyboard above tab
#TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
#TIMESTAMP=`date "+%d-%m-%Y %H:%M:%S"`
# Although backticks are common, many people prefer $(commands) like this
# the + concats strings, the - is just a separator and you could use others

TIMESTAMP=$(date "+%d-%m-%Y %H:%M:%S")

echo $welcome

echo -e "\nProgram: $0"
echo -e "\nUser: $USER"
echo -e "\nHost name: $HOSTNAME"
echo -e "\nLine Number: $LINENO"
echo -e "\nShell being used: $SHELL"
echo -e "\nA random number for simulations: $RANDOM\n"

read -p "Press enter to continue"

echo -e "\nStarting to update..."
sudo apt update

echo -e "\nUpdate is all done!"

echo -e "\nStarting to upgrade"
sudo apt upgrade
echo -e "\nUpgrade complete"

echo -e "\nStarting to autoremove"
sudo apt autoremove
echo -e "\nAutoremove complete"

echo -e "\nStarting to autoclean"
sudo apt autoclean
echo -e "\nAutoclean complete"

echo "Last update/upgrade/autoclean/autoremove: $TIMESTAMP" >> $LOGFILE

echo -e "\nProgram execution time, in seconds: $SECONDS" 
