#! /bin/bash
sum01=0
sum02=0
j=1
i=1
while [[ $i -le 100 ]]; do
  let "sum01+=i"
  let "j=i%2"
  if [[ $j -ne 0 ]]; then
    let "sum02+=i"

  fi
  let "i+=1"
done

echo "sum01:$sum01"

echo "sum02:$sum02"
