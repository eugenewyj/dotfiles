#!/bin/bash
current_dir="$( cd "$( dirname "$0" )" && pwd )"

source $current_dir/git/config.sh
if [[ ! -a ~/.gitignore_global ]]
then
    ln -s $current_dir/git/gitignore_global ~/.gitignore_global
fi

if [[ ! -a ~/.vimrc ]]
then
    ln -s $current_dir/vim/vimrc ~/.vimrc
fi
