#! /bin/bash

function checkNum() {
  echo "Please input a number:"
  read number
  if [ $number -ge 0 -a $number -lt 10 ]; then
    return 0
  elif [ $number -ge 10 -a $number -lt 20 ]; then
    return 1
  elif [ $number -ge 20 -a $number -lt 30 ]; then
    return 2
  fi
  return 4
}

echo "Call function checkNum"
checkNum
res=$?

case $res in
0)
  echo "The number is between [0,10]"
  ;;
1)
  echo "The number is between [10,20]"
  ;;
2)
  echo "The number is between [20,30]"
  ;;
*)
  echo "Not define case"
  ;;
esac
