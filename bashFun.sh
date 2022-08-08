#!/bin/bash

name=$1
compliment=$2

echo "Goodmorning $name"
sleep .3

echo "You have the best $compliment I have ever seen!!!"
sleep .3

echo "You are currently logged in as $(whoami) and you are currently in the $(pwd) directory."
sleep .3

echo "Today is $(date)"
sleep .3

echo "Your privete ip address is $(ifconfig en1 | awk -F'[ :]+' '/inet /{print $2}')"
sleep .3

#echo "Your public ip address is $(curl https://diagnostic.opendns.com/myip)"

echo "The wheather today is: 
$(curl -s http://wttr.in/Minneapolis | head -n7)"
