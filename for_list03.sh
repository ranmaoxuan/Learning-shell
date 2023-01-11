#! /bin/bash
sum=0
#seq 以指定增量从首数开始打印数字到尾数

# Seq 3需要增长到的最终数字，从1开始，输出1 2 3
# seq 1 100 输出 1到100的数字 1..100
# seq 1 2 100输出1到100的数组，按照数字2递增，1 3 5 7 9 ..100

seq_number=$(seq 10 10 100)

echo $seq_number
for VAR in $(
  #for VAR in $(seq 1 100)
  seq 1 100
); do
  let "sum+=VAR"
done
echo "Total: $sum"
