#! /bin/bash

#
# 13.1.9 变量的作用域
# 在Linux系统中，不同进程ID的Shell默认为一个不同的命名空间。下面的例子展示了同名变量在两个不同命名空间中是互不影响的。
#
var_01=100
echo var_01 in $0:$var_01
unset var_01
echo var_01 in $0:$var_01
bash namespace02.sh
