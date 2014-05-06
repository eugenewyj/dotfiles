#!/bin/bash
current_dir="$( cd "$( dirname "$0" )" && pwd )"

# 配置git
source $current_dir/git/config.sh
if [[ ! -a ~/.gitignore_global ]]
then
    ln -s $current_dir/git/gitignore_global ~/.gitignore_global
fi

# 配置vim
if [[ ! -a ~/.vimrc ]]
then
    ln -s $current_dir/vim/vimrc ~/.vimrc
fi

# 配置ReText
if [[ ! -a ~/.config/ReText\ project ]]
then
    ln -s $current_dir/ReText\ project ~/.config/ReText\ project
fi
