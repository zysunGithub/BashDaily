#!/bin/bash
# Program:
# 	User input a filename, program will check the following:
#   1)  exist? 2)file/directory 3)file permission
# History:
#	2019.01.10

echo -e "Please input a filename, I will check the file type and file permission\n"
read -p "Input filename: " filename

# 判断输入是否为空
test -z ${filename} && echo "You must input a filename!" && exit 0

# 判断文件是否存在
test ! -e ${filename} && echo "${filename} is not exist" && exit 0

# 判断是否为普通文件

test -f ${filename} && type="regular file"
test -d ${filename} && type="directory"
test -r ${filename} && perm="readable"
test -w ${filename} && perm="${perm} writable"
test -x ${filename} && perm="${perm} executable"

echo "The filename: ${filename} is ${type}"
echo "And the permission for you are : ${perm}"

