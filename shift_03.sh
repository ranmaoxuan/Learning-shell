#! /bin/bash

# bash shift_03.sh a b c d
until [ $# -eq 0 ]; do
  #打印当前的第一个参数$1，和参数的总个数$#
  echo "Now \$1 is : $1,total parameter is :$#"
  shift #移动位置参数
done
