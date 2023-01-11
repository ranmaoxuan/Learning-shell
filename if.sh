#! /bin/bash

echo -n "Please input a score:"
read score

# Shell if 基本用法
if [ ${score} -lt 60 ]; then
  echo "C"
elif [ ${score} -lt 80 -a ${score} -ge 60 ]; then

  echo "b"
else
  echo "a"

fi

# case用来判断单个值是否相等，或者可以使用正则表达式
case $score in
100)
  echo "A"
  ;;
2123 | 1233)
  echo 2 or 3
  ;;
*)
  echo default
  ;;
esac
