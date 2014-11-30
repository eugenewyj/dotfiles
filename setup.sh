#!/bin/bash
set -o nounset
set -o errexit

if [[ $# != 1 ]]
then
    echo "请输入sudo密码"
    exit 1
fi

passwd="$1"

# 安装git
echo $passwd | sudo -S apt-get install git
echo $passwd | sudo -S apt-get install git-core

# 安装zsh
echo $passwd | sudo -S apt-get install zsh

# 安装wmctrl
echo $passwd | sudo -S apt-get install wmctrl
