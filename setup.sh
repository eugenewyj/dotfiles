#!/bin/bash
set -o nounset
set -o errexit

if [[ $# != 1 ]]
then
    echo "请输入sudo密码"
    exit 1
fi

passwd="$1"

# 安装wmctrl
echo $passwd | sudo -S apt-get install wmctrl

