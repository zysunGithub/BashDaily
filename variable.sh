#!/bin/bash
# Program:
#	shows variable assignment and substitution
# History:
#	2020.08.05 zysun first release

# 变量定义时，在 = 前后不允许有空格
a=375
hello=$a

# =左边有空格, shell尝试运行“a”命令，参数为“=375”
# 运行出错提示：a: 未找到命令
#a =375
# =右边有空格，shell尝试运行“375”命令，把a设值为空的环境变量
# 运行出错提示：375: 未找到命令
#a= 375 

hello="A B C    D"
echo ${hello} # A B C D
# $hello是${hello}的简化写法
# 下面两种写法有不同输出，带双引号“$hello”会保留原有空白字符
echo $hello    # A B C D   , 只有一个空白字符
echo "$hello"  # A B C    D, 保留了原有空白字符
