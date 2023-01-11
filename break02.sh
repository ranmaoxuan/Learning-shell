#! /bin/bash123

i=1
while [[ $i -le 9 ]]; do
  j=1
  while [[ $j -le 9 ]]; do
    if [[ $j -le $i ]]; then
      let "tmp=$i*$j "
      echo -ne "$i*$j=$tmp \t"
    else
      echo -e "\n"
      break
    fi
    let "j+=1"
  done

    let "i+=1"
done

