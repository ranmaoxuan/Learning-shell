#! /bin/bash

RESULT=0
# bash shift_03.sh a b c d
until [ $# -eq 0 ]; do
  #打印当前的第一个参数$1，和参数的总个数$#

  let "RESULT+=$1"
  shift #移动位置参数
done
echo $RESULT
