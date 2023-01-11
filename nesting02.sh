#! /bin/bash
i=1
while [[ "$i" -le "9" ]]; do
  j=1
  while [[ "$j" -le "9" ]]; do

    let "tmp=i*j"
    echo "$i x $j=$tmp"
    let "j+=1"
  done

  let "i+=1"
done
