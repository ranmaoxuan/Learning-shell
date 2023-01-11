#! /bin/bash

#给脚本传入参数a b c d e f，但是由于脚本运行时“重置”了位置参数的值
# bash set01.sh a b c d e f

set a #设置脚本的6个位置参数，其值分别是1 2 3 4 5 6
COUNT=1

for i in $@; do
  echo "Here $COUNT is $i"
  let "COUNT++"
done
