#!/bin/bash
# Program:
#	Repeat question until user input the correct answer
# History:
#	2020/01/16 zysun first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:
export PATH

while [ "${answer}" != "yes" -a "${answer}" != "YES" ]
do
	read -p "Please input: \"yes|YES\" to stop this program: " answer
done
echo "Ok,you input correct answer"
