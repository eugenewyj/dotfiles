#!/bin/bash

# 这个脚本链接指定的 dotfiles 下的配置文件到 ~/

set -o nounset
set -o errexit

current_dir="$( cd "$( dirname "$0" )" && pwd )"
echo $current_dir


# 配置tmux
if [[ ! -f ~/.tmux.conf ]]
then
    ln -s $current_dir/tmux/tmux.conf ~/.tmux.conf
    echo "创建.tmux.conf链接"
fi