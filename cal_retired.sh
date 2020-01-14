#!/bin/bash
# Program:
#	You input your demobilization,I calculate how many days before you demolized.
# History:
#	20200114 zysun first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:
export PATH

echo "This program will calculate:"
echo "How many days before your demobilization data."

read -p "Input your demobilization(YYYYMMDD ex>20200114):" date_demo

# 检查参数，关注表达式中使用命令
date_check=$(echo ${date_demo} | grep '[0-9]\{8\}')
if [ $date_check == "" ];
then
	echo "You input the wrong date format."
	exit 0
fi

# 将输入日期以秒为单位表示，关注数值计算
declare -i date_demo_seconds=$(date --date="${date_demo}" +%s)
declare -i date_now_seconds=$(date +%s)
declare -i date_total_seconds=$((${date_demo_seconds} - ${date_now_seconds}))
declare -i date_total_days=$((${date_total_seconds}/60/60/24))
declare -i date_total_hours=$((${date_total_seconds}/60/60%24))
declare -i date_total_minitues=$((${date_total_seconds}/60%60))
declare -i date_total_sec=$((${date_total_seconds}%60))

if [ "${date_total_seconds}" -le "0" ];
then
	echo "You have been demobilization before" $((-1 * ${date_total_days})) "ago"
else
	echo "You will demobilize after:"
	echo "${date_total_days} days"
	echo "${date_total_hours} hours"
	echo "${date_total_minitues} minitues"
	echo "${date_total_sec} seconds"
fi
exit 0 


