#!/bin/bash
# Program:
#	This program only access the following choice:one|two|three
# Hisotry:
#	20200116 zysun first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:
export PATH

function printit()
{
	echo  "Your choice is " $(echo ${1} | tr 'a-z' 'A-Z') 
}

read -p "Please input your choice:" choice

case ${choice} in
"one"  )
	printit ${choice} 
	;;
"two"  )
	printit ${choice}
	;;
"three")
	printit ${choice}
	;;
"one two")
	printit "${choice}"
	;;
*      )
	echo "Usage ${0} one|two|three."
	;;
esac
