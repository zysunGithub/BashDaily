#!/bin/bash
# Program:
#	This program shows the users choise
# History:
#	2020.01.13 zysun firt release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:
export PATH

read -p "Please input(y/n)" input_str
if [ "${input_str}" == "Y" ] || [ "${input_str}" == "y" ];
then
	echo "OK,continue"
	exit 0
elif [ "${input_str}" == "N" ] || [ "${input_str}" == "n" ];
then
	echo "Oh,interupted"
	exit 1
else 
	echo "Oh,invalid input"
	exit 2
fi

