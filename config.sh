#!/bin/bash
set -o nounset
set -o errexit

current_dir="$( cd "$( dirname "$0" )" && pwd )"
echo $current_dir
# 配置zsh
chsh -s /bin/zsh

if [[ ! -f ~/.zshrc ]]
then
    ln -s $current_dir/zsh/zshrc ~/.zshrc
    echo "创建.zshrc链接"
fi

source $current_dir/zsh/config.sh
echo "执行完[zsh/config.sh]"

# 配置git
source $current_dir/git/config.sh
echo "执行完[git/config.sh]"

if [[ ! -f ~/.gitignore_global ]]
then
    ln -s $current_dir/git/gitignore_global ~/.gitignore_global
    echo "创建gitignore_global链接"
fi

# 配置vim
if [[ ! -f ~/.vimrc ]]
then
    ln -s $current_dir/vim/vimrc ~/.vimrc
    echo "创建.vimrc链接"
fi
