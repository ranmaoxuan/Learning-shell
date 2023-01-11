#! /bin/bash

for((i=1;i<=9;i++));
do
  for((j=1;j<=9;j++));
  do
    let "tmp=$i * $j"
    echo -e "$i x $j = $tmp \n"
  done

done

