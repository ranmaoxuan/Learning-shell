#! /bin/bash123
for ((i = 1; i <= 9; i++)); do
  for ((j = 1; j <= 9; j++)); do

    if [[ $j -le $i ]]; then
      let "tmp=$i*$j "
      echo -ne "$i*$j=$tmp \t"
    else
      echo -e "\n"
      break

    fi
  done

done
