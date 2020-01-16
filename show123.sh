#!/bin/bash
# Program:
#	This program only access the following choice:one|two|three
# Hisotry:
#	20200116 zysun first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:
export PATH

read -p "Please input your choice:" choice

case ${choice} in
"one"  )
	echo "Your choice is ONE."
	;;
"two"  )
	echo "Your choice is TWO."
	;;
"three")
	echo "Your choice is THREE."
	;;
"one two")
	echo "Your choice is ONE TWO."
	;;
*      )
	echo "Usage ${0} one|two|three."
	;;
esac
