#!/bin/bash

set -o nounset          # 避免引用未定义的变量
set -o errexit          # 避免忽略执行失败的命令

# 脚本函数
f_extract_comments() {
    egrep "^#"
}
cat template.sh | f_extract_comments | wc

# 变量注解
# 1. local(函数内部变量)
# 2. readonly(只读变量)
f_sum_lines() {
    local sum=0
    local line=""
    while read line ; do
        sum=$((${sum}+${line}))
    done
    echo ${sum}
}
#f_sum_lines < template.sh

log() { # 经典logger
    local prefix="[$(date +%Y/%m/%d\ %H:%M:%S)]:"
    echo "${prefix} $@" >&2
}
log "INFO" "a message"

# 用$()代替反单引号(`)
# 都输出: A-B-C-D
echo "A-`echo B-\`echo C-\\\`echo D\\\`\``"
echo "A-$(echo B-$(echo C-$(echo D)))"

# 用[[]](双层中括号)替代[]
# 使用[[]]能避免像异常的文件扩展名之类的问题，而且能带来很多语法上的改进，而且还增强很多新功能

# 操作符	功能说明
# ||	逻辑or(仅双中括号里使用)
# &&	逻辑and(仅双中括号里使用)
# <	字符串比较(双中括号里不需要转移)
# -lt	数字比较
# =	字符串相等
# ==	以Globbing方式进行字符串比较(仅双中括号里使用，参考下文)
# =~	用正则表达式进行字符串比较(仅双中括号里使用，参考下文)
# -n	非空字符串
# -z	空字符串
# -eq	数字相等
# -ne	数字不等
readonly name=""
# 单中括号
[ "${name}" \> "a" -o ${name} \< "m" ]
# 双中括号
[[ "${name}" > "a" && "${name}" < "m" ]]

## 正则表达式/Globbing
