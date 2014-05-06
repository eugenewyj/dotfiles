#!/bin/bash

passwd="$1"

#未输入sudo密码，提示后退出。
if [[ "$passwd" == "" ]]
then
    echo "请输入sudo密码"
    exit 1
fi

# 安装ReText
echo "$passwd"|sudo -S add-apt-repository ppa:mitya57    
echo "$passwd"|sudo -S apt-get update    
echo "$passwd"|sudo -S apt-get install retext

