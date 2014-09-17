#!/bin/bash

# 安装git
#sudo add-apt-repository ppa:mitya57    
#sudo apt-get update    
#sudo apt-get install retext

git config --global user.name "Eugene Wang"

current_email=$(git config --global --get user.email)
# 如果current_email为空，设置一个新的email
if [[ -z "$current_email" ]]
then
    git config --global user.email "fengbaoxp@gmail.com"
fi

git config --global github.user fengbaoxp

# push.default 取值及含义
# nothing:  不推任何内容（无意义）。
# matching: 将本地与远程名字能匹配上的分支全部推上去。
# upstream: 将当前分支推到它的upstream分支（pull时对应的远程分支）。
# simple:   将当前分支推到他的upstream分支，名字不匹配时拒绝（默认值）。
# current:  将当前分支推到与它同名的分支上。
git config --global push.default upstream

# Linux下转换CRLF结束符为LF结束符，并在repo中保存LF;
# Windows下checkout时将LF转换为CRLF，并在commit时转换回来。
git config --global core.autocrlf input

git config --global core.excludesfile ~/.gitignore_global

# 别名配置
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
