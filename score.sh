#!/bin/bash

#CYBERPATRIOT UBUNTU SCORING MACHINE

#BASIC FUNCTIONS

#Allow to run as root
#Gives access to more sensitive files, such as the root directory
if [ "$EUID" -ne 0 ]; then
    sudo "$0" "$@"
    exit
fi

#Scoring variable
score=0

#Vulnerability variable
vulnerabilities=0

#Menu
    echo " 	 CYBERPATRIOT SCORING MACHINE      	"
    echo "------------------------------------------------"

#VULNERABILITIES


#Firewall
firewall_status=$(sudo ufw status | grep -i "Status: active")
if [[ "$firewall_status" == *"Status: active"* ]]; then
    score=$((score + 5))
    echo "Firewall vulnerability fixed, for a gain of 5 points"
    echo "------------------------------------------------"
else
    vulnerabilities=$((vulnerabilities + 1))
fi

#Deleting users
#This can be duplicated multiple times for many users
#In this example the user 'user1' is used as an example
if ! id "user1" &>/dev/null; then
    score=$((score + 5))
    echo "user1 vulnerability fixed, for a gain of 5 points"
    echo "------------------------------------------------"
else
    vulnerabilities=$((vulnerabilities + 1))
fi

#Removing files
#This can also be copied multiple times
#In this example the file 'file' is used as an example
if [ ! -f "/home/ubuntu/file" ]; then
    score=$((score + 5))
    echo "'file' vulnerability fixed, for a gain of 5 points"
    echo "------------------------------------------------"
else
    vulnerabilities=$((vulnerabilities + 1))
fi

#Removing packages
#This can be duplicated for multiple apps and services
#In this example the package 'game1' is used as an example
if ! dpkg -l | grep -q "game1"; then
    score=$((score + 5))
    echo "'game1' vulnerability fixed, for a gain of 5 points"
    echo "------------------------------------------------"
else
    vulnerabilities=$((vulnerabilities + 1))
fi

#Adding users
#This can be duplicated for multiple users
#In this example the user 'user2' is used
if id "user2" &>/dev/null; then
    score=$((score + 5))
    echo "'user2' added, for a gain of 5 points"
    echo "-------------------------------------------------"
else
    vulnerabilities=$((vulnerabilities + 1))
fi

#Checking if a specific thing in a file was removed
#This can be duplicated
#In this example, there was malicious code "sudo-fake-malicious-command" in .bashrc
#When the user deletes this peice of code, we want to give them points
if ! grep -q "sudo-fake-malicious-command" /home/ubuntu/.bashrc; then
    score=$((score + 5))
    echo "Malicious code removed from .bashrc, for a gain of 5 points"
    echo "-------------------------------------------------"
else
    vulnerabilities=$((vulnerabilities + 1))
fi

#Checking if a specific thing in a file was added
#This can be duplicatedy
#This can also be used for forensics
#In this example, we are checking if the user has set a minimum password age
if grep -q "PASS_MIN_DAYS    7" /etc/login.defs; then
    score=$((score + 5))
    echo "Password minimum age set, for a gain of 5 points"
    echo "--------------------------------------------------"
else
    vulnerabilities=$((vulnerabilities + 1))
fi




#Display score
#Replace the number '35' with however many points you want the maximum to be
echo "There are $vulnerabilities vulnerabilities remaining"
echo "Final score: $score out of 35"

#Created by Aarav Ragoonanan
