#! /bin/bash

#定义数组
array=(A1 B "C" D)

array_two=('test1' 'test2')
array_three=('test3' 'test5')

#获取数组中指定的下标元素
echo "获取数组中指定下标元素"
echo ${array[1]}

#获取数组中所有数据
echo "获取数组中所有元素"
echo ${array[@]}
echo ${array[*]}

#获取数组中所有的key(下标)
echo "获取数组中所有的key"
echo ${!array[@]}
echo ${!array[*]}

echo "获取数组中元素数量"
#获取数组中元素数量
echo ${#array[@]}
echo ${#array[*]}

#获取数组中指定下标字符串的长度
echo "获取数组中指定下标字符串的长度"
echo ${#array[0]}

#截取数组 :1(起始位置，下标):3(需要截取的数量)
echo "截取数组"
echo ${array[@]:1:3}
echo ${array[0]:0:3}

#合并数组
echo "合并数组"
merge_array=(${array[@]} ${array_two[@]} ${array_three[*]})
echo ${merge_array[@]}

#替换数组

echo "替换数组数据"
array_three=(${array_three[@]/test3/A11})
echo ${array_three[@]}


#unset array
declare -a unsetArray=(1 2 3 4)
echo "unset array after"
echo ${unsetArray[@]}
# unset unsetArray
unset unsetArray[3]

echo "unset array before"
echo ${unsetArray[@]}
