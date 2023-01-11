#! /bin/bash

# 输入一个文件流到while循环中读取，while循环按照\n换行符读取数据，在循环中通过 awk 命令获取当前行的数据，awk获取当前行的数据默认通过空格或者制表符俩分割数据
# 可以通过 -f修改分割数据标识，print ${n} 代表分割后打印当前行 第几个元素的意思，类似于数组 array[0]取值的方式
file_path="student_info.txt"

# 输入重定向
while read line
do
  name=`echo $line | awk '{print $1}'`
  age=`echo $line | awk '{print $2}'`
  sex=`echo $line | awk '{print $3}'`
  echo "My name is $name,I'm $age years old,I'm a $sex"
done < $file_path

# 管道读取

echo -e "\n\n---管道读取 Start ------"
cat $file_path | while read line
do
name=`echo $line | awk '{print $1}'`
  age=`echo $line | awk '{print $2}'`
  sex=`echo $line | awk '{print $3}'`
  echo "My name is $name,I'm $age years old,I'm a $sex"
done
echo "---管道读取 End ------"
