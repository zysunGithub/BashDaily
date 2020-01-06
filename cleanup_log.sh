#!/bin/bash

# 清除/var/log/目录下的一个文件
# step1:
# 	检查当前用于是否有权限执行脚本
# step2:
#	检查参数是否输入正确
# step3:
#	检查脚本执行上下文是否正确

# 定义静态变量
# 要清除的文件目录
LOG_DIR="/var/log"
# 执行此脚本需要ROOT用户
ROOT_ID=0
# 默认保留日志文件末尾行数
LINES=50
# 不是root用户
E_NOTROOT=60
# 输入参数非法
E_WRONG_PARA=61
# 上下文不正确
E_XCD=62


# 检查用户权限
if [ "$UID" -ne "$ROOT_ID" ]
then
    echo "Must root user to run this script!"
    exit $E_NOTROOT
fi

# 检查参数是否错误
case "$1" in
""      )lines=50;;
*[!0-9]*)echo "Usage:`basename $0` number-to-left!";exit $E_WRONG_PARA;;
*       )lines=$LINES;;
esac

# 检查当前目录是否正确
cd $LOG_DIR
if [ `pwd` != "$LOG_DIR" ]
then
    echo "Can't access log dir!"
    exit $E_XCD
fi

tail -$lines messgages > msg.temp
mv msg.temp messgages

cat /dev/null > wtmp
echo "Log clean up"

exit 0
