#! /bash/bin

# 定义一个变量数值为8，循环从输入流读取数据，通过拿到的数据判断输入的值是否 == 8
PRE_SET_NUM=8
echo "Please input number for between 1 and 10"
while read input; do
  if [[ $input -eq $PRE_SET_NUM ]]; then
    echo "You get the right number."
    exit
  else
    echo "Wrong,please try again."
  fi
done
