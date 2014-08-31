#!/bin/bash
set -o nounset
set -o errexit

passwd="$1"

#未输入sudo密码，提示后退出。
if [[ "$passwd" == "" ]]
then
    echo "请输入sudo密码"
    exit 1
fi
